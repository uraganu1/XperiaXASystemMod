.class Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$4;
.super Ljava/lang/Object;
.source "StatusBarHeaderView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->handleShowingDetail(Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

.field final synthetic val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;Lcom/android/systemui/qs/QSTile$DetailAdapter;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;
    .param p2, "val$detail"    # Lcom/android/systemui/qs/QSTile$DetailAdapter;

    .prologue
    .line 901
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    iput-object p2, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$4;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 904
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->-get8(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Switch;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 905
    .local v0, "checked":Z
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$4;->this$1:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;

    iget-object v1, v1, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1;->this$0:Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;

    invoke-static {v1}, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;->-get8(Lcom/android/systemui/statusbar/phone/StatusBarHeaderView;)Landroid/widget/Switch;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/widget/Switch;->setChecked(Z)V

    .line 906
    iget-object v1, p0, Lcom/android/systemui/statusbar/phone/StatusBarHeaderView$1$4;->val$detail:Lcom/android/systemui/qs/QSTile$DetailAdapter;

    invoke-interface {v1, v0}, Lcom/android/systemui/qs/QSTile$DetailAdapter;->setToggleState(Z)V

    .line 903
    return-void

    .line 904
    .end local v0    # "checked":Z
    :cond_0
    const/4 v0, 0x1

    .restart local v0    # "checked":Z
    goto :goto_0
.end method
