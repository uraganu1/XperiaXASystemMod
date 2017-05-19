.class Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;
.super Ljava/lang/Object;
.source "SomcCallWidgetManager.java"

# interfaces
.implements Ljava/util/Comparator;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callwidget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "CustomComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/incallui/callwidget/ISomcCallWidget;",
        ">;",
        "Ljava/io/Serializable;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 674
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;)V
    .locals 0

    .prologue
    invoke-direct {p0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/incallui/callwidget/ISomcCallWidget;Lcom/android/incallui/callwidget/ISomcCallWidget;)I
    .locals 2
    .param p1, "c1"    # Lcom/android/incallui/callwidget/ISomcCallWidget;
    .param p2, "c2"    # Lcom/android/incallui/callwidget/ISomcCallWidget;

    .prologue
    .line 676
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getPrio()I

    move-result v0

    invoke-interface {p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getPrio()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 677
    const/4 v0, -0x1

    return v0

    .line 678
    :cond_0
    invoke-interface {p1}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getPrio()I

    move-result v0

    invoke-interface {p2}, Lcom/android/incallui/callwidget/ISomcCallWidget;->getPrio()I

    move-result v1

    if-le v0, v1, :cond_1

    .line 679
    const/4 v0, 0x1

    return v0

    .line 681
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .param p1, "c1"    # Ljava/lang/Object;
    .param p2, "c2"    # Ljava/lang/Object;

    .prologue
    .line 675
    check-cast p1, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .end local p1    # "c1":Ljava/lang/Object;
    check-cast p2, Lcom/android/incallui/callwidget/ISomcCallWidget;

    .end local p2    # "c2":Ljava/lang/Object;
    invoke-virtual {p0, p1, p2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$CustomComparator;->compare(Lcom/android/incallui/callwidget/ISomcCallWidget;Lcom/android/incallui/callwidget/ISomcCallWidget;)I

    move-result v0

    return v0
.end method
