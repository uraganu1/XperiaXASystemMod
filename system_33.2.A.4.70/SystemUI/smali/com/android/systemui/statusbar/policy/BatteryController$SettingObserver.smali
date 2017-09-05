.class final Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;
.super Landroid/database/ContentObserver;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method public constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BatteryController;

    .prologue
    .line 210
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    .line 211
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 210
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 1
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 216
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 217
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$SettingObserver;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->-wrap0(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 215
    return-void
.end method
