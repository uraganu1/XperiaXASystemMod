.class public abstract enum Lcom/google/common/util/concurrent/Service$State;
.super Ljava/lang/Enum;
.source "Service.java"


# annotations
.annotation build Lcom/google/common/annotations/Beta;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/common/util/concurrent/Service;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/common/util/concurrent/Service$State$1;,
        Lcom/google/common/util/concurrent/Service$State$2;,
        Lcom/google/common/util/concurrent/Service$State$3;,
        Lcom/google/common/util/concurrent/Service$State$4;,
        Lcom/google/common/util/concurrent/Service$State$5;,
        Lcom/google/common/util/concurrent/Service$State$6;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/google/common/util/concurrent/Service$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/google/common/util/concurrent/Service$State;

.field public static final enum FAILED:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum NEW:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum RUNNING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STARTING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum STOPPING:Lcom/google/common/util/concurrent/Service$State;

.field public static final enum TERMINATED:Lcom/google/common/util/concurrent/Service$State;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 255
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$1;

    const-string/jumbo v1, "NEW"

    invoke-direct {v0, v1, v3}, Lcom/google/common/util/concurrent/Service$State$1;-><init>(Ljava/lang/String;I)V

    .line 259
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    .line 265
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$2;

    const-string/jumbo v1, "STARTING"

    invoke-direct {v0, v1, v4}, Lcom/google/common/util/concurrent/Service$State$2;-><init>(Ljava/lang/String;I)V

    .line 268
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    .line 274
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$3;

    const-string/jumbo v1, "RUNNING"

    invoke-direct {v0, v1, v5}, Lcom/google/common/util/concurrent/Service$State$3;-><init>(Ljava/lang/String;I)V

    .line 277
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    .line 283
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$4;

    const-string/jumbo v1, "STOPPING"

    invoke-direct {v0, v1, v6}, Lcom/google/common/util/concurrent/Service$State$4;-><init>(Ljava/lang/String;I)V

    .line 286
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    .line 292
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$5;

    const-string/jumbo v1, "TERMINATED"

    invoke-direct {v0, v1, v7}, Lcom/google/common/util/concurrent/Service$State$5;-><init>(Ljava/lang/String;I)V

    .line 296
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    .line 302
    new-instance v0, Lcom/google/common/util/concurrent/Service$State$6;

    const-string/jumbo v1, "FAILED"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Lcom/google/common/util/concurrent/Service$State$6;-><init>(Ljava/lang/String;I)V

    .line 306
    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    .line 254
    const/4 v0, 0x6

    new-array v0, v0, [Lcom/google/common/util/concurrent/Service$State;

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->NEW:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STARTING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v4

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->RUNNING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v5

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->STOPPING:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v6

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->TERMINATED:Lcom/google/common/util/concurrent/Service$State;

    aput-object v1, v0, v7

    sget-object v1, Lcom/google/common/util/concurrent/Service$State;->FAILED:Lcom/google/common/util/concurrent/Service$State;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sput-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/google/common/util/concurrent/Service$State;)V
    .locals 0

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/google/common/util/concurrent/Service$State;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/google/common/util/concurrent/Service$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 254
    const-class v0, Lcom/google/common/util/concurrent/Service$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method

.method public static values()[Lcom/google/common/util/concurrent/Service$State;
    .locals 1

    .prologue
    .line 254
    sget-object v0, Lcom/google/common/util/concurrent/Service$State;->$VALUES:[Lcom/google/common/util/concurrent/Service$State;

    return-object v0
.end method


# virtual methods
.method abstract isTerminal()Z
.end method
