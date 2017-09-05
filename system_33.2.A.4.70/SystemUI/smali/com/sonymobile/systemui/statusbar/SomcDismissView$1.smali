.class Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;
.super Ljava/lang/Object;
.source "SomcDismissView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonymobile/systemui/statusbar/SomcDismissView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonymobile/systemui/statusbar/SomcDismissView;

.field final synthetic val$listener:Landroid/view/View$OnClickListener;


# direct methods
.method constructor <init>(Lcom/sonymobile/systemui/statusbar/SomcDismissView;Landroid/view/View$OnClickListener;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonymobile/systemui/statusbar/SomcDismissView;
    .param p2, "val$listener"    # Landroid/view/View$OnClickListener;

    .prologue
    .line 40
    iput-object p1, p0, Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;->this$0:Lcom/sonymobile/systemui/statusbar/SomcDismissView;

    iput-object p2, p0, Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 42
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;->this$0:Lcom/sonymobile/systemui/statusbar/SomcDismissView;

    invoke-static {v0}, Lcom/sonymobile/systemui/statusbar/SomcDismissView;->-wrap0(Lcom/sonymobile/systemui/statusbar/SomcDismissView;)V

    .line 43
    iget-object v0, p0, Lcom/sonymobile/systemui/statusbar/SomcDismissView$1;->val$listener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 41
    return-void
.end method
