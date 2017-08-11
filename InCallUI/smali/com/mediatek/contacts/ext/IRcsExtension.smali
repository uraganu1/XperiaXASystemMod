.class public interface abstract Lcom/mediatek/contacts/ext/IRcsExtension;
.super Ljava/lang/Object;
.source "IRcsExtension.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;,
        Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;
    }
.end annotation


# virtual methods
.method public abstract addEditorMenuOptions(Landroid/app/Fragment;Landroid/view/Menu;Z)V
.end method

.method public abstract addGroupDetailMenuOptions(Landroid/view/Menu;JLandroid/content/Context;I)V
.end method

.method public abstract addGroupMenuOptions(Landroid/view/Menu;Landroid/content/Context;)V
.end method

.method public abstract addListMenuOptions(Landroid/content/Context;Landroid/view/Menu;Landroid/view/MenuItem;Landroid/app/Fragment;)V
.end method

.method public abstract addPeopleMenuOptions(Landroid/view/Menu;)V
.end method

.method public abstract addQuickContactMenuOptions(Landroid/view/Menu;Landroid/net/Uri;Landroid/content/Context;)V
.end method

.method public abstract addRcsProfileEntryListener(Landroid/net/Uri;Z)Z
.end method

.method public abstract closeTextChangedListener(Z)V
.end method

.method public abstract configListUri(Landroid/net/Uri;)Landroid/net/Uri;
.end method

.method public abstract createPublicAccountEntryView(Landroid/widget/ListView;)V
.end method

.method public abstract getContactListItemRcsView()Lcom/mediatek/contacts/ext/IRcsExtension$ContactListItemRcsView;
.end method

.method public abstract getGroupListResult(Landroid/app/Fragment;[J)V
.end method

.method public abstract getIntentData(Landroid/content/Intent;Landroid/app/Fragment;)V
.end method

.method public abstract getQuickContactRcsScroller()Lcom/mediatek/contacts/ext/IRcsExtension$QuickContactRcsScroller;
.end method

.method public abstract needUpdateContactPhoto(ZZ)Z
.end method

.method public abstract rcsConfigureRawContacts(Lcom/google/common/collect/ImmutableList;Z)Lcom/google/common/collect/ImmutableList;
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
.end method

.method public abstract setEditorFragment(Landroid/app/Fragment;Landroid/app/FragmentManager;)V
.end method

.method public abstract setListFilter(Ljava/lang/StringBuilder;Landroid/content/Context;)V
.end method

.method public abstract setTextChangedListener(Lcom/android/contacts/common/model/RawContactDelta;Landroid/widget/EditText;ILjava/lang/String;)V
.end method

.method public abstract updateContactPhotoFromRcsServer(Landroid/net/Uri;Landroid/widget/ImageView;Landroid/content/Context;)V
.end method
