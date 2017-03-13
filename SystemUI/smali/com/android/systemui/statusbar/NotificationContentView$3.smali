.class Lcom/android/systemui/statusbar/NotificationContentView$3;
.super Ljava/lang/Object;
.source "NotificationContentView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationContentView;->runSwitchAnimation(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationContentView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationContentView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/NotificationContentView;

    .prologue
    .line 363
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$3;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$3;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationContentView$3;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/NotificationContentView;->-get2(Lcom/android/systemui/statusbar/NotificationContentView;)I

    move-result v1

    invoke-static {v0, v1}, Lcom/android/systemui/statusbar/NotificationContentView;->-wrap0(Lcom/android/systemui/statusbar/NotificationContentView;I)V

    .line 365
    return-void
.end method
