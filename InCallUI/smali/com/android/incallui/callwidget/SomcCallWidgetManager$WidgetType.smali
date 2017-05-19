.class public final enum Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
.super Ljava/lang/Enum;
.source "SomcCallWidgetManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/callwidget/SomcCallWidgetManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "WidgetType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

.field public static final enum WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

.field public static final enum WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

.field public static final enum WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;


# instance fields
.field private id:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 43
    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    const-string/jumbo v1, "WIDGET_TYPE_BACKGROUND"

    invoke-direct {v0, v1, v2, v2}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    const-string/jumbo v1, "WIDGET_TYPE_MAIN"

    invoke-direct {v0, v1, v3, v3}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    new-instance v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    const-string/jumbo v1, "WIDGET_TYPE_DIALOG"

    invoke-direct {v0, v1, v4, v4}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    .line 42
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_BACKGROUND:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_MAIN:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->WIDGET_TYPE_DIALOG:Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->$VALUES:[Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "id"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 48
    iput p3, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->id:I

    .line 47
    return-void
.end method

.method public static valueOf(I)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 56
    invoke-static {}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->values()[Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    move-result-object v2

    const/4 v1, 0x0

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 57
    .local v0, "type":Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    invoke-virtual {v0}, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 58
    return-object v0

    .line 56
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    .end local v0    # "type":Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    :cond_1
    const/4 v1, 0x0

    return-object v1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 42
    const-class v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    return-object v0
.end method

.method public static values()[Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->$VALUES:[Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;

    return-object v0
.end method


# virtual methods
.method public getId()I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/android/incallui/callwidget/SomcCallWidgetManager$WidgetType;->id:I

    return v0
.end method
