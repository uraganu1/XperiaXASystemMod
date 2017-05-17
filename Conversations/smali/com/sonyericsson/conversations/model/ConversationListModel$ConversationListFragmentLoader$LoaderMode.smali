.class public final enum Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;
.super Ljava/lang/Enum;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoaderMode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

.field public static final enum NORMAL_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

.field public static final enum SEARCH_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 126
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    const-string/jumbo v1, "SEARCH_MODE"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->SEARCH_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    const-string/jumbo v1, "NORMAL_MODE"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->NORMAL_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    .line 125
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->SEARCH_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->NORMAL_MODE:Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    aput-object v1, v0, v3

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->$VALUES:[Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 125
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 125
    const-class v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;->$VALUES:[Lcom/sonyericsson/conversations/model/ConversationListModel$ConversationListFragmentLoader$LoaderMode;

    return-object v0
.end method
