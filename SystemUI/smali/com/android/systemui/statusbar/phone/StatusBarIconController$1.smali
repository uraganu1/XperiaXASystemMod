.class Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;
.super Ljava/lang/Object;
.source "StatusBarIconController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBarIconController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarIconController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    .prologue
    .line 117
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 120
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarIconController$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarIconController;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/phone/StatusBarIconController;->-set0(Lcom/android/systemui/statusbar/phone/StatusBarIconController;Z)Z

    .line 119
    return-void
.end method
