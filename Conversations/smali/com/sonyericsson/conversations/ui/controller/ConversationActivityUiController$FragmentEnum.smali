.class final enum Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;
.super Ljava/lang/Enum;
.source "ConversationActivityUiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "FragmentEnum"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

.field public static final enum ATTACHMENTBARFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

.field public static final enum CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

.field public static final enum EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

.field public static final enum MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

.field public static final enum TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    const/4 v6, 0x4

    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 204
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    const-string/jumbo v1, "CONVERSATIONLISTFRAGMENT"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .line 205
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    const-string/jumbo v1, "MESSAGELISTFRAGMENT"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .line 206
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    const-string/jumbo v1, "TOFIELDFRAGMENT"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .line 207
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    const-string/jumbo v1, "EDITORFRAGMENT"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .line 208
    new-instance v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    const-string/jumbo v1, "ATTACHMENTBARFRAGMENT"

    invoke-direct {v0, v1, v6}, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ATTACHMENTBARFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    .line 203
    const/4 v0, 0x5

    new-array v0, v0, [Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->CONVERSATIONLISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->MESSAGELISTFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->TOFIELDFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->EDITORFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    aput-object v1, v0, v5

    sget-object v1, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->ATTACHMENTBARFRAGMENT:Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    aput-object v1, v0, v6

    sput-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->$VALUES:[Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 203
    const-class v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;
    .locals 1

    .prologue
    .line 203
    sget-object v0, Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;->$VALUES:[Lcom/sonyericsson/conversations/ui/controller/ConversationActivityUiController$FragmentEnum;

    return-object v0
.end method
