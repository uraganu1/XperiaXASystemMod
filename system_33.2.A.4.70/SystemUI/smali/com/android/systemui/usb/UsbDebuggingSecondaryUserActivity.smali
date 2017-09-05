.class public Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;
.super Lcom/android/internal/app/AlertActivity;
.source "UsbDebuggingSecondaryUserActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;
    }
.end annotation


# instance fields
.field private mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->finish()V

    .line 93
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1, "icicle"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    .line 42
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    const-string/jumbo v2, "service.adb.tcp.port"

    invoke-static {v2, v4}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v2, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    invoke-direct {v2, p0, p0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;-><init>(Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 49
    .local v0, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    const v2, 0x7f0900af

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 50
    invoke-static {p0}, Landroid/os/UserManager;->get(Landroid/content/Context;)Landroid/os/UserManager;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/os/UserManager;->getUserInfo(I)Landroid/content/pm/UserInfo;

    move-result-object v1

    .line 51
    .local v1, "user":Landroid/content/pm/UserInfo;
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, v1, Landroid/content/pm/UserInfo;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    const v3, 0x7f0900b0

    invoke-virtual {p0, v3, v2}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    .line 52
    const v2, 0x104000a

    invoke-virtual {p0, v2}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonText:Ljava/lang/CharSequence;

    .line 53
    iput-object p0, v0, Lcom/android/internal/app/AlertController$AlertParams;->mPositiveButtonListener:Landroid/content/DialogInterface$OnClickListener;

    .line 55
    invoke-virtual {p0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->setupAlert()V

    .line 41
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 78
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStart()V

    .line 80
    new-instance v0, Landroid/content/IntentFilter;

    const-string/jumbo v1, "android.hardware.usb.action.USB_STATE"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 81
    .local v0, "filter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v1, v0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 77
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    if-eqz v0, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->mDisconnectedReceiver:Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity$UsbDisconnectedReceiver;

    invoke-virtual {p0, v0}, Lcom/android/systemui/usb/UsbDebuggingSecondaryUserActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 89
    :cond_0
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 85
    return-void
.end method
