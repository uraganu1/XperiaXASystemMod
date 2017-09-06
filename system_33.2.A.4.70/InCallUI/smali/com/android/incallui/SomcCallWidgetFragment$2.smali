.class Lcom/android/incallui/SomcCallWidgetFragment$2;
.super Ljava/lang/Object;
.source "SomcCallWidgetFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/SomcCallWidgetFragment;->updateWidgetMenu(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/SomcCallWidgetFragment;

.field final synthetic val$widgetList:Ljava/util/List;


# direct methods
.method constructor <init>(Lcom/android/incallui/SomcCallWidgetFragment;Ljava/util/List;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/incallui/SomcCallWidgetFragment;

    .prologue
    .line 233
    .local p2, "val$widgetList":Ljava/util/List;, "Ljava/util/List<Lcom/android/incallui/callwidget/ISomcCallWidget;>;"
    iput-object p1, p0, Lcom/android/incallui/SomcCallWidgetFragment$2;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iput-object p2, p0, Lcom/android/incallui/SomcCallWidgetFragment$2;->val$widgetList:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 236
    iget-object v0, p0, Lcom/android/incallui/SomcCallWidgetFragment$2;->this$0:Lcom/android/incallui/SomcCallWidgetFragment;

    iget-object v1, p0, Lcom/android/incallui/SomcCallWidgetFragment$2;->val$widgetList:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/android/incallui/SomcCallWidgetFragment;->-wrap6(Lcom/android/incallui/SomcCallWidgetFragment;Ljava/util/List;)V

    .line 235
    return-void
.end method
