.class Lcom/android/systemui/usb/UsbStorageActivity$4;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/usb/UsbStorageActivity;


# direct methods
.method constructor <init>(Lcom/android/systemui/usb/UsbStorageActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/usb/UsbStorageActivity;

    .prologue
    .line 230
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$4;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$4;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    iget-object v1, p0, Lcom/android/systemui/usb/UsbStorageActivity$4;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-static {v1}, Lcom/android/systemui/usb/UsbStorageActivity;->-get4(Lcom/android/systemui/usb/UsbStorageActivity;)Landroid/os/storage/StorageManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/os/storage/StorageManager;->isUsbMassStorageEnabled()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->-wrap5(Lcom/android/systemui/usb/UsbStorageActivity;Z)V

    .line 232
    return-void
.end method
