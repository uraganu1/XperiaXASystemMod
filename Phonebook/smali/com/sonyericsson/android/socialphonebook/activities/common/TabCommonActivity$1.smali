.class Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$1;
.super Ljava/lang/Object;
.source "TabCommonActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->onResume()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    .prologue
    .line 171
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    iget-object v0, v0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;->mFloatingButtonController:Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;

    iget-object v1, p0, Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity$1;->this$0:Lcom/sonyericsson/android/socialphonebook/activities/common/TabCommonActivity;

    invoke-virtual {v0, v1}, Lcom/sonyericsson/android/socialphonebook/common/fab/FloatingActionButtonTabController;->onFloatingActionButtonClick(Landroid/app/Activity;)V

    .line 174
    return-void
.end method
