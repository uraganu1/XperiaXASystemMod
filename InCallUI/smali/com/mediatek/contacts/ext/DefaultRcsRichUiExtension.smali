.class public Lcom/mediatek/contacts/ext/DefaultRcsRichUiExtension;
.super Ljava/lang/Object;
.source "DefaultRcsRichUiExtension.java"

# interfaces
.implements Lcom/mediatek/contacts/ext/IRcsRichUiExtension;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public loadRichScrnByContactUri(Landroid/net/Uri;Landroid/content/Context;)V
    .locals 0
    .param p1, "lookupUri"    # Landroid/net/Uri;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 28
    return-void
.end method

.method public loadRichScrnByVcardEntry(ZLcom/android/vcard/VCardEntry;Landroid/content/Context;)V
    .locals 0
    .param p1, "isFirst"    # Z
    .param p2, "entry"    # Lcom/android/vcard/VCardEntry;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 19
    return-void
.end method
