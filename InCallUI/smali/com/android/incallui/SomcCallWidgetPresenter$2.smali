.class Lcom/android/incallui/SomcCallWidgetPresenter$2;
.super Ljava/lang/Object;
.source "SomcCallWidgetPresenter.java"

# interfaces
.implements Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/SomcCallWidgetPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcCallWidgetPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcCallWidgetPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallWidgetPresenter;

    .prologue
    .line 272
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$2;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuUpdate(Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/incallui/callwidget/ISomcCallWidget;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 284
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$2;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .line 285
    .local v0, "ui":Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;
    if-nez v0, :cond_0

    .line 286
    return-void

    .line 288
    :cond_0
    invoke-interface {v0, p1}, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;->updateWidgetMenu(Ljava/util/List;)V

    .line 283
    return-void
.end method

.method public onViewAdded()V
    .locals 0

    .prologue
    .line 291
    return-void
.end method

.method public onWidgetUpdate(Landroid/widget/RemoteViews;I)V
    .locals 2
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "widgetType"    # I

    .prologue
    .line 276
    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$2;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/SomcCallWidgetPresenter;->getUi()Lcom/android/incallui/Ui;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;

    .line 277
    .local v0, "ui":Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;
    if-nez v0, :cond_0

    .line 278
    return-void

    .line 280
    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/android/incallui/SomcCallWidgetPresenter$CallWidgetUi;->showWidget(Landroid/widget/RemoteViews;I)V

    .line 275
    return-void
.end method
