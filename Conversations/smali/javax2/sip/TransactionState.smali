.class public final enum Ljavax2/sip/TransactionState;
.super Ljava/lang/Enum;
.source "TransactionState.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavax2/sip/TransactionState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavax2/sip/TransactionState;

.field public static final enum CALLING:Ljavax2/sip/TransactionState;

.field public static final enum COMPLETED:Ljavax2/sip/TransactionState;

.field public static final enum CONFIRMED:Ljavax2/sip/TransactionState;

.field public static final enum PROCEEDING:Ljavax2/sip/TransactionState;

.field public static final enum TERMINATED:Ljavax2/sip/TransactionState;

.field public static final enum TRYING:Ljavax2/sip/TransactionState;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 5
    new-instance v0, Ljavax2/sip/TransactionState;

    const-string/jumbo v1, "CALLING"

    invoke-direct {v0, v1, v3}, Ljavax2/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    new-instance v0, Ljavax2/sip/TransactionState;

    const-string/jumbo v1, "TRYING"

    invoke-direct {v0, v1, v4}, Ljavax2/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    new-instance v0, Ljavax2/sip/TransactionState;

    const-string/jumbo v1, "PROCEEDING"

    invoke-direct {v0, v1, v5}, Ljavax2/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    new-instance v0, Ljavax2/sip/TransactionState;

    const-string/jumbo v1, "COMPLETED"

    invoke-direct {v0, v1, v6}, Ljavax2/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    new-instance v0, Ljavax2/sip/TransactionState;

    const-string/jumbo v1, "CONFIRMED"

    invoke-direct {v0, v1, v7}, Ljavax2/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    new-instance v0, Ljavax2/sip/TransactionState;

    const-string/jumbo v1, "TERMINATED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Ljavax2/sip/TransactionState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    const/4 v0, 0x6

    .line 4
    new-array v0, v0, [Ljavax2/sip/TransactionState;

    sget-object v1, Ljavax2/sip/TransactionState;->CALLING:Ljavax2/sip/TransactionState;

    aput-object v1, v0, v3

    sget-object v1, Ljavax2/sip/TransactionState;->TRYING:Ljavax2/sip/TransactionState;

    aput-object v1, v0, v4

    sget-object v1, Ljavax2/sip/TransactionState;->PROCEEDING:Ljavax2/sip/TransactionState;

    aput-object v1, v0, v5

    sget-object v1, Ljavax2/sip/TransactionState;->COMPLETED:Ljavax2/sip/TransactionState;

    aput-object v1, v0, v6

    sget-object v1, Ljavax2/sip/TransactionState;->CONFIRMED:Ljavax2/sip/TransactionState;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Ljavax2/sip/TransactionState;->TERMINATED:Ljavax2/sip/TransactionState;

    aput-object v2, v0, v1

    sput-object v0, Ljavax2/sip/TransactionState;->$VALUES:[Ljavax2/sip/TransactionState;

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

.method public static valueOf(Ljava/lang/String;)Ljavax2/sip/TransactionState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Ljavax2/sip/TransactionState;

    .line 4
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Ljavax2/sip/TransactionState;

    return-object v0
.end method

.method public static values()[Ljavax2/sip/TransactionState;
    .locals 1

    .prologue
    .line 4
    sget-object v0, Ljavax2/sip/TransactionState;->$VALUES:[Ljavax2/sip/TransactionState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax2/sip/TransactionState;

    return-object v0
.end method
