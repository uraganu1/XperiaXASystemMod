.class Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$3;
.super Ljava/lang/Object;
.source "PhoneActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    .prologue
    .line 304
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;->-get0(Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;)Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    move-result-object v0

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity$3;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/PhoneActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->onFloatingActionButtonClick(Landroid/app/Activity;)V

    .line 307
    return-void
.end method
