.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$7;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    .prologue
    .line 580
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 584
    iget-object v0, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$7;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-static {v0}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->-wrap2(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)V

    .line 582
    return-void
.end method
