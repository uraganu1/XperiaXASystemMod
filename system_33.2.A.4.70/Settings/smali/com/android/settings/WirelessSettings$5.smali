.class Lcom/android/settings/WirelessSettings$5;
.super Ljava/lang/Object;
.source "WirelessSettings.java"

# interfaces
.implements Lcom/sonymobile/settings/nfc/AdditionalPreferences$InitListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/WirelessSettings;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/WirelessSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/WirelessSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/WirelessSettings;

    .prologue
    .line 456
    iput-object p1, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInit()V
    .locals 2

    .prologue
    .line 458
    iget-object v0, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v0}, Lcom/android/settings/WirelessSettings;->-get1(Lcom/android/settings/WirelessSettings;)Lcom/sonymobile/settings/nfc/NfcDependentPreferences;

    move-result-object v0

    iget-object v1, p0, Lcom/android/settings/WirelessSettings$5;->this$0:Lcom/android/settings/WirelessSettings;

    invoke-static {v1}, Lcom/android/settings/WirelessSettings;->-get0(Lcom/android/settings/WirelessSettings;)Lcom/sonymobile/settings/nfc/AdditionalPreferences;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sonymobile/settings/nfc/AdditionalPreferences;->getPayment()Landroid/preference/Preference;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/sonymobile/settings/nfc/NfcDependentPreferences;->setPayment(Landroid/preference/Preference;)V

    .line 457
    return-void
.end method
