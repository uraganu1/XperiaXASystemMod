.class public final enum Lcom/sonyericsson/android/socialphonebook/util/ListItemType;
.super Ljava/lang/Enum;
.source "ListItemType.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/util/ListItemType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

.field public static final enum KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

.field public static final enum UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 12
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    const-string/jumbo v1, "KNOWN_CONTACT"

    invoke-direct {v0, v1, v2, v2}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    const-string/jumbo v1, "UNKNOWN_CALL_LOG"

    invoke-direct {v0, v1, v3, v3}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    .line 11
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 15
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 16
    iput p3, p0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->value:I

    .line 15
    return-void
.end method

.method public static getCount()I
    .locals 1

    .prologue
    .line 36
    invoke-static {}, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->values()[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    move-result-object v0

    array-length v0, v0

    return v0
.end method

.method public static getViewType(I)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;
    .locals 3
    .param p0, "viewType"    # I

    .prologue
    .line 20
    packed-switch p0, :pswitch_data_0

    .line 26
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is an unexpected"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 27
    const-string/jumbo v2, " value for ViewType.getViewType"

    .line 26
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 22
    :pswitch_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->KNOWN_CONTACT:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v0

    .line 24
    :pswitch_1
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->UNKNOWN_CALL_LOG:Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v0

    .line 20
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/util/ListItemType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 11
    const-class v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;
    .locals 1

    .prologue
    .line 11
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/util/ListItemType;

    return-object v0
.end method


# virtual methods
.method public getValue()I
    .locals 1

    .prologue
    .line 32
    iget v0, p0, Lcom/sonyericsson/android/socialphonebook/util/ListItemType;->value:I

    return v0
.end method
