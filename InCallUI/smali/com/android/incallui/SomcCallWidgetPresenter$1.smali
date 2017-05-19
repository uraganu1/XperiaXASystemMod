.class Lcom/android/incallui/SomcCallWidgetPresenter$1;
.super Ljava/lang/Object;
.source "SomcCallWidgetPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 252
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 255
    const-string/jumbo v0, "CallWidgetPresenter"

    const-string/jumbo v1, "Service connected to callWidgetManager"

    invoke-static {v0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 256
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    check-cast p2, Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/android/incallui/SomcCallWidgetPresenter;->-set0(Lcom/android/incallui/SomcCallWidgetPresenter;Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 257
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    iget-object v1, v1, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->registerListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 258
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-wrap0(Lcom/android/incallui/SomcCallWidgetPresenter;)V

    .line 259
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v1}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get1(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/SomcVideoShareWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->registerLocalWidget(Lcom/android/incallui/callwidget/SomcLocalCallWidget;)V

    .line 254
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v3, 0x0

    .line 263
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 264
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    iget-object v1, v1, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->setAreaReserved(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;Z)V

    .line 265
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    iget-object v1, v1, Lcom/android/incallui/SomcCallWidgetPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->unregisterListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 266
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get0(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v1}, Lcom/android/incallui/SomcCallWidgetPresenter;->-get1(Lcom/android/incallui/SomcCallWidgetPresenter;)Lcom/android/incallui/SomcVideoShareWidget;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->unregisterLocalWidget(Lcom/android/incallui/callwidget/SomcLocalCallWidget;)V

    .line 267
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetPresenter$1;->this$0:Lcom/android/incallui/SomcCallWidgetPresenter;

    invoke-static {v0, v3}, Lcom/android/incallui/SomcCallWidgetPresenter;->-set0(Lcom/android/incallui/SomcCallWidgetPresenter;Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 262
    :cond_0
    return-void
.end method
