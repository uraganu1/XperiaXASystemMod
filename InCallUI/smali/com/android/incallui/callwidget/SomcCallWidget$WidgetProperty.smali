.class public final enum Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
.super Ljava/lang/Enum;
.source "SomcCallWidget.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callwidget/SomcCallWidget;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetProperty"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum iconDisabled:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum iconPressed:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum prio:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum status:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum visible:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum visibleAfterCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum visibleDuringCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

.field public static final enum visibleWhenCalling:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 57
    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "prio"

    invoke-direct {v0, v1, v3}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->prio:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "iconPressed"

    invoke-direct {v0, v1, v4}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->iconPressed:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "iconDisabled"

    invoke-direct {v0, v1, v5}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->iconDisabled:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "visible"

    invoke-direct {v0, v1, v6}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visible:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "status"

    invoke-direct {v0, v1, v7}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->status:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "visibleWhenCalling"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleWhenCalling:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    .line 58
    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "visibleDuringCall"

    const/4 v2, 0x6

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleDuringCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const-string/jumbo v1, "visibleAfterCall"

    const/4 v2, 0x7

    invoke-direct {v0, v1, v2}, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleAfterCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    .line 56
    const/16 v0, 0x8

    new-array v0, v0, [Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->prio:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->iconPressed:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v4

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->iconDisabled:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v5

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visible:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v6

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->status:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    aput-object v1, v0, v7

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleWhenCalling:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleDuringCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->visibleAfterCall:Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->$VALUES:[Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 56
    const-class v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;->$VALUES:[Lcom/android/incallui/callwidget/SomcCallWidget$WidgetProperty;

    return-object v0
.end method
