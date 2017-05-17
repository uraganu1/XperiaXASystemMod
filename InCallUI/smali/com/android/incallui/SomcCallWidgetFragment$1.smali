.class Lcom/android/incallui/SomcCallWidgetFragment$1;
.super Ljava/lang/Object;
.source "SomcCallWidgetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcCallWidgetFragment;->showWidget(Landroid/widget/RemoteViews;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcCallWidgetFragment;

.field final synthetic val$remoteViews:Landroid/widget/RemoteViews;

.field final synthetic val$widgetType:I


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcCallWidgetFragment;Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallWidgetFragment;
    .param p2, "val$remoteViews"    # Landroid/widget/RemoteViews;
    .param p3, "val$widgetType"    # I

    .prologue
    .line 181
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iput-object p2, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iput p3, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$widgetType:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 184
    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$remoteViews:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v7}, Lcom/android/incallui/SomcCallWidgetFragment;->-get0(Lcom/android/incallui/SomcCallWidgetFragment;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 189
    const-string/jumbo v7, "CallWidgetFragment"

    const-string/jumbo v8, "Area is reserved. Inhibited setting of remote views"

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 190
    return-void

    .line 193
    :cond_0
    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iget v8, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$widgetType:I

    invoke-static {v7, v8}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap0(Lcom/android/incallui/SomcCallWidgetFragment;I)Landroid/view/ViewGroup;

    move-result-object v5

    .line 194
    .local v5, "widgetContainer":Landroid/view/ViewGroup;
    if-nez v5, :cond_1

    .line 195
    const-string/jumbo v7, "CallWidgetFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not find container for type "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$widgetType:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 196
    return-void

    .line 198
    :cond_1
    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iget v8, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$widgetType:I

    invoke-static {v7, v8}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap5(Lcom/android/incallui/SomcCallWidgetFragment;I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v3

    .line 199
    .local v3, "remoteViewWidgetType":Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    if-lez v7, :cond_3

    const/4 v2, 0x1

    .line 201
    .local v2, "hadRemoteView":Z
    :goto_0
    invoke-virtual {v5}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 203
    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$remoteViews:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_4

    .line 204
    invoke-virtual {v5, v9}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 207
    :try_start_0
    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$remoteViews:Landroid/widget/RemoteViews;

    iget-object v8, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-virtual {v8}, Lcom/android/incallui/SomcCallWidgetFragment;->getView()Landroid/view/View;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v7, v8, v5}, Landroid/widget/RemoteViews;->apply(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v6

    .line 208
    .local v6, "widgetView":Landroid/view/View;
    invoke-virtual {v5, v6}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 216
    .end local v6    # "widgetView":Landroid/view/View;
    :goto_1
    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v7}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap4(Lcom/android/incallui/SomcCallWidgetFragment;)Z

    move-result v1

    .line 217
    .local v1, "fgAreaUsed":Z
    const/4 v4, 0x0

    .line 219
    .local v4, "viewToAnimate":Landroid/view/ViewGroup;
    if-nez v2, :cond_2

    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->val$remoteViews:Landroid/widget/RemoteViews;

    if-eqz v7, :cond_2

    iget-object v7, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v7}, Lcom/android/incallui/SomcCallWidgetFragment;->-get2(Lcom/android/incallui/SomcCallWidgetFragment;)Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    move-result-object v7

    sget-object v8, Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;->INCOMING:Lcom/android/incallui/SomcCallWidgetFragment$WidgetMode;

    if-eq v7, v8, :cond_2

    .line 220
    sget-object v7, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    if-ne v3, v7, :cond_2

    .line 221
    move-object v4, v5

    .line 224
    .end local v4    # "viewToAnimate":Landroid/view/ViewGroup;
    :cond_2
    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v7

    .line 225
    iget-object v8, p0, Lcom/android/incallui/SomcCallWidgetFragment$1;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    invoke-static {v8}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap3(Lcom/android/incallui/SomcCallWidgetFragment;)Z

    move-result v8

    .line 224
    invoke-virtual {v7, v1, v8, v4}, Lcom/android/incallui/InCallPresenter;->setWidgetAreaUsed(ZZLandroid/view/ViewGroup;)V

    .line 183
    return-void

    .line 199
    .end local v1    # "fgAreaUsed":Z
    .end local v2    # "hadRemoteView":Z
    :cond_3
    const/4 v2, 0x0

    .restart local v2    # "hadRemoteView":Z
    goto :goto_0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v7, "CallWidgetFragment"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Could not apply remote view. "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 213
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_4
    const/16 v7, 0x8

    invoke-virtual {v5, v7}, Landroid/view/ViewGroup;->setVisibility(I)V

    goto :goto_1
.end method
