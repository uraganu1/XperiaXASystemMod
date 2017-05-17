.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickModeFactory;
.super Ljava/lang/Object;
.source "PickModeFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static createGetContentMode(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 84
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, "contentType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.item/contact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 86
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/SelectOrCreateContactPickMode;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/SelectOrCreateContactPickMode;-><init>(Landroid/content/Intent;Ljava/lang/String;I)V

    return-object v1

    .line 87
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.item/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 88
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 89
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.item/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 90
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 92
    :cond_2
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1
.end method

.method private static createPickerMode(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 56
    invoke-virtual {p1, p0}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 58
    .local v0, "contentType":Ljava/lang/String;
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 59
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ContactPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 60
    :cond_0
    const-string/jumbo v1, "vnd.android.cursor.dir/phone_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 61
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 62
    :cond_1
    const-string/jumbo v1, "vnd.android.cursor.dir/email_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 63
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/EmailPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 64
    :cond_2
    const-string/jumbo v1, "vnd.android.cursor.dir/postal-address_v2"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 65
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PostalPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 66
    :cond_3
    const-string/jumbo v1, "vnd.android.cursor.item/group_membership"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 67
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/GroupPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 69
    :cond_4
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve the mode for intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static createShortcutMode(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
    .locals 4
    .param p0, "intent"    # Landroid/content/Intent;

    .prologue
    .line 73
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, "className":Ljava/lang/String;
    const-string/jumbo v1, "alias.DialShortcut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "alias.MessageShortcut"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 76
    :cond_0
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;

    invoke-direct {v1, p0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PhonePickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 78
    :cond_1
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/SelectOrCreateContactPickMode;

    const-string/jumbo v2, "android.intent.action.VIEW"

    .line 79
    const v3, 0x7f090060

    .line 78
    invoke-direct {v1, p0, v2, v3}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/SelectOrCreateContactPickMode;-><init>(Landroid/content/Intent;Ljava/lang/String;I)V

    return-object v1
.end method

.method public static getMode(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 33
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 35
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 36
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 35
    if-nez v1, :cond_0

    .line 37
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.PICK"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 35
    if-eqz v1, :cond_1

    .line 38
    :cond_0
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickModeFactory;->createPickerMode(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-result-object v1

    return-object v1

    .line 39
    :cond_1
    const-string/jumbo v1, "android.intent.action.CREATE_SHORTCUT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 40
    invoke-static {p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickModeFactory;->createShortcutMode(Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-result-object v1

    return-object v1

    .line 41
    :cond_2
    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 42
    invoke-static {p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickModeFactory;->createGetContentMode(Landroid/content/Context;Landroid/content/Intent;)Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/PickMode;

    move-result-object v1

    return-object v1

    .line 43
    :cond_3
    const-string/jumbo v1, "android.intent.action.INSERT_OR_EDIT"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 44
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/InsertOrEditContactPickMode;

    invoke-direct {v1, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/InsertOrEditContactPickMode;-><init>(Landroid/content/Intent;)V

    return-object v1

    .line 45
    :cond_4
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 46
    const-string/jumbo v1, "com.sonyericsson.contacts.PICK_CONVERSATIONS_TARGET"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 45
    if-eqz v1, :cond_6

    .line 47
    :cond_5
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConversationPickMode;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1

    .line 48
    :cond_6
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK_CONFERENCE_CALL_PARTICIPANTS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 50
    new-instance v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;

    invoke-direct {v1, p0, p1}, Lcom/sonyericsson/android/socialphonebook/contactpicker/modes/ConferenceCallPickMode;-><init>(Landroid/content/Context;Landroid/content/Intent;)V

    return-object v1

    .line 52
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to resolve the mode for intent "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
