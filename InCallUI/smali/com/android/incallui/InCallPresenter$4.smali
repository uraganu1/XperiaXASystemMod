.class Lcom/android/incallui/InCallPresenter$4;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/InCallPresenter;

    .prologue
    .line 365
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuUpdate(Ljava/util/List;)V
    .locals 0
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
    .line 370
    .local p1, "widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    return-void
.end method

.method public onViewAdded()V
    .locals 1

    .prologue
    .line 374
    const-string/jumbo v0, "onViewAdded"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 375
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$4;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-wrap0(Lcom/android/incallui/InCallPresenter;)Z

    .line 373
    return-void
.end method

.method public onWidgetUpdate(Landroid/widget/RemoteViews;I)V
    .locals 0
    .param p1, "remoteViews"    # Landroid/widget/RemoteViews;
    .param p2, "widgetType"    # I

    .prologue
    .line 367
    return-void
.end method
