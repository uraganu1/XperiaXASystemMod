.class public final enum Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
.super Ljava/lang/Enum;
.source "ImComposeEventListener.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/conversation/ImComposeEventListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ImComposeState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

.field public static final enum IS_NOT_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

.field public static final enum IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 13
    new-instance v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    const-string/jumbo v1, "IS_TYPING"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    new-instance v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    const-string/jumbo v1, "IS_NOT_TYPING"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_NOT_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    const/4 v0, 0x2

    .line 12
    new-array v0, v0, [Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->IS_NOT_TYPING:Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

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
    .line 12
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    .line 12
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;
    .locals 1

    .prologue
    .line 12
    sget-object v0, Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;->$VALUES:[Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/conversation/ImComposeEventListener$ImComposeState;

    return-object v0
.end method
