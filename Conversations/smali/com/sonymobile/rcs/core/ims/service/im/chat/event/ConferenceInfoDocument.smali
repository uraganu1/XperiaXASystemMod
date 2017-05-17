.class public Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;
.super Ljava/lang/Object;
.source "ConferenceInfoDocument.java"


# instance fields
.field private entity:Ljava/lang/String;

.field private maxUserCount:I

.field private state:Ljava/lang/String;

.field private userCount:I

.field private users:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "entity"    # Ljava/lang/String;
    .param p2, "state"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 67
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->users:Ljava/util/Vector;

    .line 54
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->maxUserCount:I

    .line 59
    iput v1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->userCount:I

    .line 68
    iput-object p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->entity:Ljava/lang/String;

    .line 69
    iput-object p2, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->state:Ljava/lang/String;

    .line 70
    return-void
.end method


# virtual methods
.method public addUser(Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;)V
    .locals 1
    .param p1, "user"    # Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;

    .prologue
    .line 96
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->users:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    .line 97
    return-void
.end method

.method public getMaxUserCount()I
    .locals 1

    .prologue
    .line 114
    iget v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->maxUserCount:I

    return v0
.end method

.method public getUsers()Ljava/util/Vector;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Vector",
            "<",
            "Lcom/sonymobile/rcs/core/ims/service/im/chat/event/User;",
            ">;"
        }
    .end annotation

    .prologue
    .line 105
    iget-object v0, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->users:Ljava/util/Vector;

    return-object v0
.end method

.method public setMaxUserCount(I)V
    .locals 0
    .param p1, "maxUserCount"    # I

    .prologue
    .line 123
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->maxUserCount:I

    .line 124
    return-void
.end method

.method public setUserCount(I)V
    .locals 0
    .param p1, "userCount"    # I

    .prologue
    .line 141
    iput p1, p0, Lcom/sonymobile/rcs/core/ims/service/im/chat/event/ConferenceInfoDocument;->userCount:I

    .line 142
    return-void
.end method
