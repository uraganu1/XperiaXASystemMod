.class public Lcom/sonymobile/rcs/service/api/client/contacts/ContactsApi;
.super Ljava/lang/Object;
.source "ContactsApi.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "ctx"    # Landroid/content/Context;

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    invoke-static {p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->createInstance(Landroid/content/Context;)V

    .line 42
    return-void
.end method


# virtual methods
.method public getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;
    .locals 1
    .param p1, "contact"    # Ljava/lang/String;

    .prologue
    .line 60
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getContactInfo(Ljava/lang/String;)Lcom/sonymobile/rcs/service/api/client/contacts/ContactInfo;

    move-result-object v0

    return-object v0
.end method

.method public getRcsContacts()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 88
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getRcsContacts()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isRcsValidNumber(Ljava/lang/String;)Z
    .locals 1
    .param p1, "phoneNumber"    # Ljava/lang/String;

    .prologue
    .line 143
    invoke-static {}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->getInstance()Lcom/sonymobile/rcs/provider/eab/ContactsManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/sonymobile/rcs/provider/eab/ContactsManager;->isRcsValidNumber(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
