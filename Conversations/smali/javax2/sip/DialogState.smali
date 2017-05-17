.class public final enum Ljavax2/sip/DialogState;
.super Ljava/lang/Enum;
.source "DialogState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax2/sip/DialogState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax2/sip/DialogState;

.field public static final enum CONFIRMED:Ljavax2/sip/DialogState;

.field public static final enum EARLY:Ljavax2/sip/DialogState;

.field public static final enum TERMINATED:Ljavax2/sip/DialogState;

.field public static final _CONFIRMED:I

.field public static final _EARLY:I

.field public static final _TERMINATED:I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 5
    new-instance v0, Ljavax2/sip/DialogState;

    const-string/jumbo v1, "EARLY"

    invoke-direct {v0, v1, v2}, Ljavax2/sip/DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    new-instance v0, Ljavax2/sip/DialogState;

    const-string/jumbo v1, "CONFIRMED"

    invoke-direct {v0, v1, v3}, Ljavax2/sip/DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    new-instance v0, Ljavax2/sip/DialogState;

    const-string/jumbo v1, "TERMINATED"

    invoke-direct {v0, v1, v4}, Ljavax2/sip/DialogState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    const/4 v0, 0x3

    .line 4
    new-array v0, v0, [Ljavax2/sip/DialogState;

    sget-object v1, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    aput-object v1, v0, v2

    sget-object v1, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    aput-object v1, v0, v3

    sget-object v1, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    aput-object v1, v0, v4

    sput-object v0, Ljavax2/sip/DialogState;->$VALUES:[Ljavax2/sip/DialogState;

    .line 7
    sget-object v0, Ljavax2/sip/DialogState;->EARLY:Ljavax2/sip/DialogState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Ljavax2/sip/DialogState;->_EARLY:I

    .line 9
    sget-object v0, Ljavax2/sip/DialogState;->CONFIRMED:Ljavax2/sip/DialogState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Ljavax2/sip/DialogState;->_CONFIRMED:I

    .line 11
    sget-object v0, Ljavax2/sip/DialogState;->TERMINATED:Ljavax2/sip/DialogState;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    sput v0, Ljavax2/sip/DialogState;->_TERMINATED:I

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 4
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static getObject(I)Ljavax2/sip/DialogState;
    .locals 4
    .param p0, "state"    # I

    .prologue
    .line 15
    :try_start_0
    invoke-static {}, Ljavax2/sip/DialogState;->values()[Ljavax2/sip/DialogState;

    move-result-object v1

    aget-object v1, v1, p0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    :catch_0
    move-exception v0

    .line 17
    .local v0, "e":Ljava/lang/IndexOutOfBoundsException;
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid dialog state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public static valueOf(Ljava/lang/String;)Ljavax2/sip/DialogState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Ljavax2/sip/DialogState;

    .line 4
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax2/sip/DialogState;

    return-object v0
.end method

.method public static values()[Ljavax2/sip/DialogState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Ljavax2/sip/DialogState;->$VALUES:[Ljavax2/sip/DialogState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax2/sip/DialogState;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 22
    invoke-virtual {p0}, Ljavax2/sip/DialogState;->ordinal()I

    move-result v0

    return v0
.end method
