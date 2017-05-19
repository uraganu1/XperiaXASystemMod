.class Lcom/android/incallui/InCallPresenter$3;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Landroid/content/ServiceConnection;


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
    .line 343
    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 346
    const-string/jumbo v0, "Service connected to callWidgetManager"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    check-cast p2, Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .end local p2    # "service":Landroid/os/IBinder;
    invoke-static {v0, p2}, Lcom/android/incallui/InCallPresenter;->-set0(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 349
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-wrap0(Lcom/android/incallui/InCallPresenter;)Z

    .line 351
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->registerListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 352
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->addListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 345
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 356
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 357
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, v1, Lcom/android/incallui/InCallPresenter;->mCallWidgetListener:Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;

    invoke-virtual {v0, v1}, Lcom/android/incallui/callwidget/SomcCallWidgetManager;->unregisterListener(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CallWidgetListener;)V

    .line 358
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->-get1(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/incallui/InCallPresenter;->removeListener(Lcom/android/incallui/InCallPresenter$InCallStateListener;)V

    .line 359
    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$3;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-static {v0, v2}, Lcom/android/incallui/InCallPresenter;->-set0(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/callwidget/SomcCallWidgetManager;)Lcom/android/incallui/callwidget/SomcCallWidgetManager;

    .line 355
    :cond_0
    return-void
.end method
