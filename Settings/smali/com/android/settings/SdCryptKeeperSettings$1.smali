.class Lcom/android/settings/SdCryptKeeperSettings$1;
.super Ljava/lang/Object;
.source "SdCryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/SdCryptKeeperSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/settings/SdCryptKeeperSettings;


# direct methods
.method constructor <init>(Lcom/android/settings/SdCryptKeeperSettings;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/settings/SdCryptKeeperSettings;

    .prologue
    .line 81
    iput-object p1, p0, Lcom/android/settings/SdCryptKeeperSettings$1;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/settings/SdCryptKeeperSettings$1;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    const/16 v1, 0x37

    invoke-static {v0, v1}, Lcom/android/settings/SdCryptKeeperSettings;->-wrap0(Lcom/android/settings/SdCryptKeeperSettings;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 86
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lcom/android/settings/SdCryptKeeperSettings$1;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    invoke-virtual {v1}, Lcom/android/settings/SdCryptKeeperSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 87
    const v1, 0x7f0b0298

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 88
    const v1, 0x7f0b0299

    .line 86
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 89
    const v1, 0x104000a

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 83
    :cond_0
    return-void
.end method
