.class Lcom/sonyericsson/movablepanes/paneview/PaneView$2;
.super Ljava/lang/Object;
.source "PaneView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/sonyericsson/movablepanes/paneview/PaneView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;


# direct methods
.method constructor <init>(Lcom/sonyericsson/movablepanes/paneview/PaneView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sonyericsson/movablepanes/paneview/PaneView;

    .prologue
    .line 209
    iput-object p1, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;
    .param p2, "keyCode"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 211
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v0

    .line 212
    .local v0, "action":I
    if-eqz v0, :cond_0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    .line 213
    :cond_0
    sparse-switch p2, :sswitch_data_0

    .line 241
    :cond_1
    return v3

    .line 216
    :sswitch_0
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v2

    if-nez v2, :cond_1

    .line 217
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v3, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap1(Lcom/sonyericsson/movablepanes/paneview/PaneView;Landroid/view/View;)Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    move-result-object v3

    iput-object v3, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    .line 218
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    if-eqz v2, :cond_2

    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    iget-object v2, v2, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->view:Landroid/view/View;

    if-eqz v2, :cond_2

    .line 219
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-get0(Lcom/sonyericsson/movablepanes/paneview/PaneView;)Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v3, v3, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isInteractive(I)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 223
    :cond_2
    :goto_0
    return v4

    .line 220
    :cond_3
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-get0(Lcom/sonyericsson/movablepanes/paneview/PaneView;)Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v3, v3, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-static {v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneAdapter;->isEnabled(I)Z

    move-result v2

    .line 218
    if-eqz v2, :cond_2

    .line 221
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v3, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    iget-object v3, v3, Lcom/sonyericsson/movablepanes/paneview/PaneView;->mSelectedItem:Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;

    invoke-static {v2, v3}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-wrap2(Lcom/sonyericsson/movablepanes/paneview/PaneView;Lcom/sonyericsson/movablepanes/paneview/PaneView$AdapterItem;)V

    goto :goto_0

    .line 229
    :sswitch_1
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView;)Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 230
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-virtual {v2, p1}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->getPositionForView(Landroid/view/View;)I

    move-result v1

    .line 231
    .local v1, "position":I
    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    .line 234
    iget-object v2, p0, Lcom/sonyericsson/movablepanes/paneview/PaneView$2;->this$0:Lcom/sonyericsson/movablepanes/paneview/PaneView;

    invoke-static {v2}, Lcom/sonyericsson/movablepanes/paneview/PaneView;->-get1(Lcom/sonyericsson/movablepanes/paneview/PaneView;)Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;

    move-result-object v2

    invoke-interface {v2, p1, v1}, Lcom/sonyericsson/movablepanes/paneview/PaneView$OnItemActionListener;->onDeleteItem(Landroid/view/View;I)V

    .line 235
    return v4

    .line 213
    nop

    :sswitch_data_0
    .sparse-switch
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
        0x43 -> :sswitch_1
        0x70 -> :sswitch_1
    .end sparse-switch
.end method
