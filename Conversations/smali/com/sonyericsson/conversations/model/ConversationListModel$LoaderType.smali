.class public final enum Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
.super Ljava/lang/Enum;
.source "ConversationListModel.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonyericsson/conversations/model/ConversationListModel;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LoaderType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field public static final enum CONVERGED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field public static final enum INTEGRATED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field public static final enum JOYN:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

.field public static final enum XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 65
    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    const-string/jumbo v1, "INTEGRATED"

    invoke-direct {v0, v1, v2}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->INTEGRATED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    const-string/jumbo v1, "CONVERGED"

    invoke-direct {v0, v1, v3}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->CONVERGED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    const-string/jumbo v1, "JOYN"

    invoke-direct {v0, v1, v4}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->JOYN:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    new-instance v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    const-string/jumbo v1, "XMS"

    invoke-direct {v0, v1, v5}, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    .line 64
    const/4 v0, 0x4

    new-array v0, v0, [Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->INTEGRATED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    aput-object v1, v0, v2

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->CONVERGED:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    aput-object v1, v0, v3

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->JOYN:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    aput-object v1, v0, v4

    sget-object v1, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->XMS:Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    aput-object v1, v0, v5

    sput-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->$VALUES:[Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 64
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 64
    const-class v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    return-object v0
.end method

.method public static values()[Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;
    .locals 1

    .prologue
    .line 64
    sget-object v0, Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;->$VALUES:[Lcom/sonyericsson/conversations/model/ConversationListModel$LoaderType;

    return-object v0
.end method
