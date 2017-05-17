.class Lcom/android/incallui/InCallPresenter$AccelerometerObserver;
.super Landroid/database/ContentObserver;
.source "InCallPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AccelerometerObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 2251
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$AccelerometerObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    .line 2252
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 2251
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 2
    .param p1, "selfChange"    # Z

    .prologue
    .line 2257
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$AccelerometerObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$AccelerometerObserver;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isLandscapeAllowed()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->setInCallAllowsOrientationChange(Z)V

    .line 2256
    return-void
.end method
