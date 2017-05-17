.class Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;
.super Ljava/lang/Object;
.source "BlackScreenController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    .prologue
    .line 102
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;->this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;->this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->-get0(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 106
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController$1;->this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;->-wrap0(Lcom/sonyericsson/android/socialphonebook/BlackScreenController$ProximityHideUIController;)V

    .line 104
    :cond_0
    return-void
.end method
