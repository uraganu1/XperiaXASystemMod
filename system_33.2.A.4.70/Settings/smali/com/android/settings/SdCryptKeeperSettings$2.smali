.class Lcom/android/settings/SdCryptKeeperSettings$2;
.super Ljava/lang/Object;
.source "SdCryptKeeperSettings.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/settings/SdCryptKeeperSettings;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
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
    .line 153
    iput-object p1, p0, Lcom/android/settings/SdCryptKeeperSettings$2;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/settings/SdCryptKeeperSettings$2;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    invoke-static {v0}, Lcom/android/settings/SdCryptKeeperSettings;->-get0(Lcom/android/settings/SdCryptKeeperSettings;)Landroid/widget/CheckBox;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/CheckBox;->toggle()V

    .line 157
    iget-object v0, p0, Lcom/android/settings/SdCryptKeeperSettings$2;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    iget-object v1, p0, Lcom/android/settings/SdCryptKeeperSettings$2;->this$0:Lcom/android/settings/SdCryptKeeperSettings;

    invoke-static {v1}, Lcom/android/settings/SdCryptKeeperSettings;->-get0(Lcom/android/settings/SdCryptKeeperSettings;)Landroid/widget/CheckBox;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v1

    invoke-static {v0, v1}, Lcom/android/settings/SdCryptKeeperSettings;->-set0(Lcom/android/settings/SdCryptKeeperSettings;Z)Z

    .line 155
    return-void
.end method
