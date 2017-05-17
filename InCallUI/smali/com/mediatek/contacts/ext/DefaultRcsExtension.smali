.class public Lcom/mediatek/contacts/ext/DefaultRcsExtension;
.super Ljava/lang/Object;
.source "DefaultRcsExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IRcsExtension;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ext/DefaultRcsExtension$1;,
        Lcom/mediatek/contacts/ext/DefaultRcsExtension$2;
    }
.end annotation


# instance fields
.field private mContactListItemRcsView:Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;

.field private mQuickContactScrollerCustom:Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Lcom/mediatek/contacts/ext/DefaultRcsExtension$1;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ext/DefaultRcsExtension$1;-><init>(Lcom/mediatek/contacts/ext/DefaultRcsExtension;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ext/DefaultRcsExtension;->mContactListItemRcsView:Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;

    .line 260
    new-instance v0, Lcom/mediatek/contacts/ext/DefaultRcsExtension$2;

    invoke-direct {v0, p0}, Lcom/mediatek/contacts/ext/DefaultRcsExtension$2;-><init>(Lcom/mediatek/contacts/ext/DefaultRcsExtension;)V

    iput-object v0, p0, Lcom/mediatek/contacts/ext/DefaultRcsExtension;->mQuickContactScrollerCustom:Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;

    .line 20
    return-void
.end method


# virtual methods
.method public addEditorMenuOptions(Landroid/app/Fragment;Landroid/view/Menu;Z)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "isInsert"    # Z

    .prologue
    .line 146
    return-void
.end method

.method public addGroupDetailMenuOptions(Landroid/view/Menu;JLandroid/content/Context;I)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "groupId"    # J
    .param p4, "context"    # Landroid/content/Context;
    .param p5, "groupSize"    # I

    .prologue
    .line 99
    return-void
.end method

.method public addGroupMenuOptions(Landroid/view/Menu;Landroid/content/Context;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 86
    return-void
.end method

.method public addListMenuOptions(Landroid/content/Context;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "menu"    # Landroid/view/Menu;
    .param p3, "item"    # Landroid/view/MenuItem;
    .param p4, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 64
    return-void
.end method

.method public addPeopleMenuOptions(Landroid/view/Menu;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 156
    return-void
.end method

.method public addQuickContactMenuOptions(Landroid/view/Menu;Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .param p1, "menu"    # Landroid/view/Menu;
    .param p2, "uri"    # Landroid/net/Uri;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 222
    return-void
.end method

.method public addRcsProfileEntryListener(Landroid/net/Uri;Z)Z
    .locals 1
    .param p1, "uri"    # Landroid/net/Uri;
    .param p2, "isEmpty"    # Z

    .prologue
    .line 168
    const/4 v0, 0x0

    return v0
.end method

.method public closeTextChangedListener(Z)V
    .locals 0
    .param p1, "quit"    # Z

    .prologue
    .line 124
    return-void
.end method

.method public configListUri(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    .line 51
    return-object p1
.end method

.method public createPublicAccountEntryView(Landroid/widget/ListView;)V
    .locals 0
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 176
    return-void
.end method

.method public getContactListItemRcsView()Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;
    .locals 1

    .prologue
    .line 228
    iget-object v0, p0, Lcom/mediatek/contacts/ext/DefaultRcsExtension;->mContactListItemRcsView:Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;

    return-object v0
.end method

.method public getGroupListResult(Landroid/app/Fragment;[J)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "ids"    # [J

    .prologue
    .line 74
    return-void
.end method

.method public getIntentData(Landroid/content/Intent;Landroid/app/Fragment;)V
    .locals 0
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "fragment"    # Landroid/app/Fragment;

    .prologue
    .line 29
    return-void
.end method

.method public getQuickContactRcsScroller()Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;
    .locals 1

    .prologue
    .line 233
    iget-object v0, p0, Lcom/mediatek/contacts/ext/DefaultRcsExtension;->mQuickContactScrollerCustom:Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;

    return-object v0
.end method

.method public needUpdateContactPhoto(ZZ)Z
    .locals 0
    .param p1, "isLetterTile"    # Z
    .param p2, "hasThemeColor"    # Z

    .prologue
    .line 213
    return p2
.end method

.method public rcsConfigureRawContacts(Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;
    .locals 0
    .param p2, "isProfile"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;Z)",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Lcom/android/contacts/common/model/RawContact;",
            ">;"
        }
    .end annotation

    .prologue
    .line 201
    .local p1, "rawContacts":Lcom/google/common/collect/ImmutableList;, "Lcom/google/common/collect/ImmutableList<Lcom/android/contacts/common/model/RawContact;>;"
    return-object p1
.end method

.method public setEditorFragment(Landroid/app/Fragment;Landroid/app/FragmentManager;)V
    .locals 0
    .param p1, "fragment"    # Landroid/app/Fragment;
    .param p2, "manager"    # Landroid/app/FragmentManager;

    .prologue
    .line 134
    return-void
.end method

.method public setListFilter(Ljava/lang/StringBuilder;Landroid/content/Context;)V
    .locals 0
    .param p1, "selection"    # Ljava/lang/StringBuilder;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    return-void
.end method

.method public setTextChangedListener(Lcom/android/contacts/common/model/RawContactDelta;Landroid/widget/EditText;ILjava/lang/String;)V
    .locals 0
    .param p1, "state"    # Lcom/android/contacts/common/model/RawContactDelta;
    .param p2, "view"    # Landroid/widget/EditText;
    .param p3, "inputType"    # I
    .param p4, "number"    # Ljava/lang/String;

    .prologue
    .line 114
    return-void
.end method

.method public updateContactPhotoFromRcsServer(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/content/Context;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "photo"    # Landroid/widget/ImageView;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 188
    return-void
.end method
