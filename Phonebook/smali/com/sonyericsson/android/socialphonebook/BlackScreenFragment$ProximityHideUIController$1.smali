.class Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;
.super Ljava/lang/Object;
.source "BlackScreenFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;


# direct methods
.method constructor <init>(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)V
    .locals 0
    .param p1, "this$1"    # Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    .prologue
    .line 89
    iput-object p1, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;->this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;->this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->-get0(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController$1;->this$1:Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;

    invoke-static {v0}, Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;->-wrap0(Lcom/sonyericsson/android/socialphonebook/BlackScreenFragment$ProximityHideUIController;)V

    .line 91
    :cond_0
    return-void
.end method
