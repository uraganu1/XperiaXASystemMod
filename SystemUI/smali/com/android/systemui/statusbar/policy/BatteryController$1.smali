.class Lcom/android/systemui/statusbar/policy/BatteryController$1;
.super Lcom/android/systemui/settings/CurrentUserTracker;
.source "BatteryController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/policy/BatteryController;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/BatteryController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/BatteryController;Landroid/content/Context;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/policy/BatteryController;
    .param p2, "$anonymous0"    # Landroid/content/Context;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-direct {p0, p2}, Lcom/android/systemui/settings/CurrentUserTracker;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public onUserSwitched(I)V
    .locals 1
    .param p1, "newUserId"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/BatteryController$1;->this$0:Lcom/android/systemui/statusbar/policy/BatteryController;

    invoke-static {v0}, Lcom/android/systemui/statusbar/policy/BatteryController;->-wrap0(Lcom/android/systemui/statusbar/policy/BatteryController;)V

    .line 86
    return-void
.end method
