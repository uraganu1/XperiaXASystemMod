.class public final enum Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;
.super Ljava/lang/Enum;
.source "CallLogDetailActionEntry.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ActionEntryType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

.field public static final enum CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

.field public static final enum DELETE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

.field public static final enum OTHER:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

.field public static final enum VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

.field public static final enum VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    const-string/jumbo v1, "OTHER"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->OTHER:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 18
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    const-string/jumbo v1, "VOICEMAIL"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 19
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    const-string/jumbo v1, "CALL"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 20
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    const-string/jumbo v1, "VIDEO_CALL"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 21
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    const-string/jumbo v1, "DELETE"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->DELETE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    .line 16
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->OTHER:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VOICEMAIL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->VIDEO_CALL:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->DELETE:Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 16
    const-class v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;->$VALUES:[Lcom/sonyericsson/android/socialphonebook/calllog/CallLogDetailActionEntry$ActionEntryType;

    return-object v0
.end method
