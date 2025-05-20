import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:souq_Morhaf/features/home/ui/widgets/scope.dart';
import '../../../../core/routing/routes.dart';
import '../../../product_details/ui/widgets/product_details_args.dart';
import '../../logic/offer_cubit.dart';
import '../widgets/animals_birds_row.dart';
import '../widgets/app_bar_widget.dart';
import '../widgets/business_jobs_row.dart';
import '../widgets/cars_type_row.dart';
import '../widgets/category_widget.dart';
import '../widgets/devices_row.dart';
import '../widgets/drawer_widget.dart';
import '../widgets/every_marhaf_row.dart';
import '../widgets/filter_widget.dart';
import '../widgets/furniture_row.dart';
import '../widgets/items_on_display.dart';
import '../widgets/jobs_row.dart';
import '../widgets/mobiles_devices_row.dart';
import '../widgets/realty_row.dart';
import '../widgets/services_row.dart';
import '../widgets/sheep_animal_row.dart';
import '../widgets/supplies_row.dart';
import '../widgets/toyota_car_row.dart';
import '../widgets/watch_supplies_row.dart';

class HomeBodyScreen extends StatefulWidget {
  const HomeBodyScreen({super.key});

  @override
  State<HomeBodyScreen> createState() => _HomeBodyScreenState();
}

class _HomeBodyScreenState extends State<HomeBodyScreen> {
  String selectedCategory = "";
  String selectedBrand = "الكل";

  void onCategorySelected(String category) {
    setState(() {
      selectedCategory = category;
      selectedBrand = "الكل";
    });
  }

  void onBrandSelected(String brand) {
    setState(() {
      selectedBrand = brand;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => OffersCubit(),
      child: Scaffold(
        appBar: AppBarWidget(),
        drawer: DrawerWidget(),
        body: BlocBuilder<OffersCubit, OffersState>(
          builder: (context, state) {
            return CustomScrollView(
              slivers: [
                SliverToBoxAdapter(child: CategoryWidget(onCategorySelected: onCategorySelected)),
                if (selectedCategory.isNotEmpty)
                  SliverToBoxAdapter(
                    child: Column(
                      children: [
                        if (selectedCategory == "مرهف السيارات")
                          CarsTypeRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "مرهف العقار")
                          RealtyRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "مرهف الاجهزة")
                          DevicesRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "حيوانات وطيور")
                          AnimalsBirdsRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "وظائف")
                          JobsRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "اثاث")
                          FurnitureRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "مستلزمات شخصية")
                          SuppliesRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "خدمات")
                          ServicesRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedCategory == "الكل")
                          EveryMorhafRow(
                            selectedBrand: selectedBrand,
                            onBrandSelected: onBrandSelected,
                          ),
                        if (selectedBrand == "تويوتا") ToyotaCarRow(),
                        if (selectedBrand == "جوالات") MobilesDevicesRow(),
                        if (selectedBrand == "وظائف ادارية") BusinessJobsRow(),
                        if (selectedBrand == "ساعات") WatchSuppliesRow(),
                        if (selectedBrand == "غنم") SheepAnimalRow(),
                        SizedBox(height: 20.h),
                        FilterWidget(),
                        Scope(),
                      ],
                    ),
                  ),

                if (state is OffersLoading)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: CircularProgressIndicator()),
                  ),
                if (state is OffersError)
                  SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: Text('خطأ: ${state.message}')),
                  ),
                if (state is OffersLoaded)
                  state.offers.isEmpty
                      ? SliverFillRemaining(
                    hasScrollBody: false,
                    child: Center(child: Text('لا توجد عروض')),
                  )
                      : SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        final offer = state.offers[index];
                        return ItemsOnDisplay(
                          title: offer.subject,
                          username: offer.username,
                          userImagePath: offer.userImagePath,
                          timeText: offer.timeText,
                          locationText: offer.region,
                          productImagePath: offer.imageUrls.isNotEmpty
                              ? offer.imageUrls.first
                              : 'assets/images/desk.png',
                          onTap: () {
                            Navigator.pushNamed(
                              context,
                              Routes.productDetailsScreen,
                              arguments: ProductDetailsArgs(
                                subject: offer.subject,
                                username: offer.username,
                                userImagePath: offer.userImagePath,
                                timeText: offer.timeText,
                                region: offer.region,
                                productImagePath: offer.imageUrls.isNotEmpty
                                    ? offer.imageUrls.first
                                    : '',
                                city: offer.city,
                                brand: offer.brand,
                                type: offer.type,
                                model: offer.model,
                                additionalInfo: offer.additionalInfo ?? '',
                                price: offer.price ?? '',
                                phoneNumber: offer.phone ?? '',
                                imageUrls: offer.imageUrls,
                              ),
                            );
                          },
                        );
                      },
                      childCount: state.offers.length,
                    ),
                  ),
              ],
            );
          },
        ),

      ),
    );
  }
}