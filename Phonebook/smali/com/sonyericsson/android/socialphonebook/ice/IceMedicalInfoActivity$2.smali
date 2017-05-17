.class Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$2;
.super Ljava/lang/Object;
.source "IceMedicalInfoActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;

    .prologue
    .line 61
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 64
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity$2;->this$0:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoActivity;->mMedicalInfoFragment:Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/ice/IceMedicalInfoFragment;->onDiscard()V

    .line 63
    return-void
.end method
