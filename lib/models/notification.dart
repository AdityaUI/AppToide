import '../utils/utils.dart';

class AppNotification {
  String image, notification, time = 'aditya@gmail.com';
  bool isRead;

  AppNotification(this.image, this.notification, this.isRead);
}

List<AppNotification> notifications = [
  AppNotification(AvailableImages.Aditya, 'Aditya Agrawal', false),
  AppNotification(AvailableImages.settings, 'Profile Settings', true),
  AppNotification(AvailableImages.billing, 'Recent Purchases and Billing Info', false),
  AppNotification(AvailableImages.giftcard, 'Redeem Gift Card or Code', true),
];