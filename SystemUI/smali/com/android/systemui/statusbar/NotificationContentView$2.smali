.class Lcom/android/systemui/statusbar/NotificationContentView$2;
.super Landroid/view/ViewOutlineProvider;
.source "NotificationContentView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationContentView;
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
    .line 82
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 6
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v1, 0x0

    .line 85
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->-get1(Lcom/android/systemui/statusbar/NotificationContentView;)I

    move-result v4

    .line 86
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationContentView$2;->this$0:Lcom/android/systemui/statusbar/NotificationContentView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationContentView;->-get0(Lcom/android/systemui/statusbar/NotificationContentView;)I

    move-result v0

    int-to-float v5, v0

    move-object v0, p2

    move v2, v1

    .line 85
    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Outline;->setRoundRect(IIIIF)V

    .line 84
    return-void
.end method
