.class public final enum Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
.super Ljava/lang/Enum;
.source "ImSettingApi.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/jms/setting/ImSettingApi;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ManualAcceptModeForImTextConversation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

.field public static final enum ACCEPT_ON_CONVERSATION_OPEN:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

.field public static final enum ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

.field public static final enum ACCEPT_ON_TYPING_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 17
    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    const-string/jumbo v1, "ACCEPT_ON_CONVERSATION_OPEN"

    invoke-direct {v0, v1, v2}, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_CONVERSATION_OPEN:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    const-string/jumbo v1, "ACCEPT_ON_TYPING_MESSAGE"

    invoke-direct {v0, v1, v3}, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_TYPING_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    new-instance v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    const-string/jumbo v1, "ACCEPT_ON_SEND_MESSAGE"

    invoke-direct {v0, v1, v4}, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    const/4 v0, 0x3

    .line 16
    new-array v0, v0, [Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_CONVERSATION_OPEN:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_TYPING_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->ACCEPT_ON_SEND_MESSAGE:Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    aput-object v1, v0, v4

    sput-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

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
    .line 16
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    const-class v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    .line 16
    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    return-object v0
.end method

.method public static values()[Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;
    .locals 1

    .prologue
    .line 16
    sget-object v0, Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;->$VALUES:[Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    invoke-virtual {v0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sonymobile/jms/setting/ImSettingApi$ManualAcceptModeForImTextConversation;

    return-object v0
.end method
