.class public final enum Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;
.super Ljava/lang/Enum;
.source "ImFileNotification.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/notifications/ImFileNotification;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FileMessageState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

.field public static final enum ACCEPTED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

.field public static final enum FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

.field public static final enum INVITED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

.field public static final enum IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

.field public static final enum PAUSED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 31
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    const-string/jumbo v1, "INVITED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;-><init>(Ljava/lang/String;I)V

    .line 34
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->INVITED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 35
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    const-string/jumbo v1, "IN_PROGRESS"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;-><init>(Ljava/lang/String;I)V

    .line 38
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 39
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    const-string/jumbo v1, "PAUSED"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;-><init>(Ljava/lang/String;I)V

    .line 42
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->PAUSED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 43
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    const-string/jumbo v1, "ACCEPTED"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;-><init>(Ljava/lang/String;I)V

    .line 46
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ACCEPTED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 47
    new-instance v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    const-string/jumbo v1, "FINISHED"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;-><init>(Ljava/lang/String;I)V

    .line 50
    sput-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    .line 30
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->INVITED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->IN_PROGRESS:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->PAUSED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->ACCEPTED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->FINISHED:Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->$VALUES:[Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 30
    const-class v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;
    .locals 1

    .prologue
    .line 30
    sget-object v0, Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;->$VALUES:[Lcom/sonyericsson/conversations/notifications/ImFileNotification$FileMessageState;

    return-object v0
.end method
