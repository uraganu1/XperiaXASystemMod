.class Lcom/android/systemui/usb/UsbStorageActivity$6;
.super Ljava/lang/Object;
.source "UsbStorageActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/usb/UsbStorageActivity;->onCreateDialog(ILandroid/os/Bundle;)Landroid/app/Dialog;
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
    .line 288
    iput-object p1, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 290
    iget-object v0, p0, Lcom/android/systemui/usb/UsbStorageActivity$6;->this$0:Lcom/android/systemui/usb/UsbStorageActivity;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/usb/UsbStorageActivity;->-set0(Lcom/android/systemui/usb/UsbStorageActivity;Z)Z

    .line 289
    return-void
.end method