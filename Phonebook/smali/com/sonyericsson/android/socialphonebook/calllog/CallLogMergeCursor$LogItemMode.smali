.class final enum Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
.super Ljava/lang/Enum;
.source "CallLogMergeCursor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "LogItemMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

.field public static final enum NEWLY_MISSED:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

.field public static final enum NORMAL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 67
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    const-string/jumbo v1, "NEWLY_MISSED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NEWLY_MISSED:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    const-string/jumbo v1, "NORMAL"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NORMAL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    .line 66
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NEWLY_MISSED:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->NORMAL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 66
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;
    .locals 1

    .prologue
    .line 66
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogMergeCursor$LogItemMode;

    return-object v0
.end method
