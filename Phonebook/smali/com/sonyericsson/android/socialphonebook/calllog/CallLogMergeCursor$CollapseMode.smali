.class final enum Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
.super Ljava/lang/Enum;
.source "CallLogMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "CollapseMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

.field public static final enum COLLAPSE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

.field public static final enum COLLAPSE_CONFERENCE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

.field public static final enum COLLAPSE_VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

.field public static final enum NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 76
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;-><init>(Ljava/lang/String;I)V

    .line 77
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    .line 79
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    const-string/jumbo v1, "COLLAPSE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;-><init>(Ljava/lang/String;I)V

    .line 80
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    .line 82
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    const-string/jumbo v1, "COLLAPSE_VOICEMAIL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;-><init>(Ljava/lang/String;I)V

    .line 83
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    .line 85
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    const-string/jumbo v1, "COLLAPSE_CONFERENCE"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;-><init>(Ljava/lang/String;I)V

    .line 86
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_CONFERENCE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    .line 74
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->NEW:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->COLLAPSE_CONFERENCE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 74
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;
    .locals 1

    .prologue
    .line 74
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$CollapseMode;

    return-object v0
.end method
