.class public Lcom/sonyericsson/conversations/ui/IntentFactory;
.super Ljava/lang/Object;
.source "IntentFactory.java"


# static fields
.field private static sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Lcom/sonyericsson/conversations/ui/IntentFactory;

    invoke-direct {v0}, Lcom/sonyericsson/conversations/ui/IntentFactory;-><init>()V

    sput-object v0, Lcom/sonyericsson/conversations/ui/IntentFactory;->sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;

    .line 50
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getFactory()Lcom/sonyericsson/conversations/ui/IntentFactory;
    .locals 1

    .prologue
    .line 104
    sget-object v0, Lcom/sonyericsson/conversations/ui/IntentFactory;->sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;

    return-object v0
.end method

.method public static declared-synchronized injectFactory(Lcom/sonyericsson/conversations/ui/IntentFactory;)V
    .locals 2
    .param p0, "intentFactory"    # Lcom/sonyericsson/conversations/ui/IntentFactory;

    .prologue
    const-class v0, Lcom/sonyericsson/conversations/ui/IntentFactory;

    monitor-enter v0

    .line 113
    :try_start_0
    sput-object p0, Lcom/sonyericsson/conversations/ui/IntentFactory;->sIntentFactory:Lcom/sonyericsson/conversations/ui/IntentFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 112
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public getAlbumIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 292
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 293
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 294
    const-string/jumbo v1, "com.sonyericsson.album"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 295
    const-string/jumbo v1, "android.intent.extra.ALLOW_MULTIPLE"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 296
    return-object v0
.end method

.method public getAppInfoSettingsIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 443
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    .line 444
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "package:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 443
    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    return-object v0
.end method

.method public getAudioPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 221
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 222
    .local v0, "musicPickerIntent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/track"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 223
    return-object v0
.end method

.method public getCalendarPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 416
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 417
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "text/x-vCalendar"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setTypeAndNormalize(Ljava/lang/String;)Landroid/content/Intent;

    .line 418
    return-object v0
.end method

.method public getCameraCapture(Landroid/net/Uri;)Landroid/content/Intent;
    .locals 3
    .param p1, "outputUri"    # Landroid/net/Uri;

    .prologue
    .line 321
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.IMAGE_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 322
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.android.camera"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 328
    const-string/jumbo v1, "output"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 333
    const-string/jumbo v1, "addToMediaStore"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 335
    return-object v0
.end method

.method public getChangeDefaultSmsPackageIntent(Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "packageName"    # Ljava/lang/String;

    .prologue
    .line 405
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.provider.Telephony.ACTION_CHANGE_DEFAULT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 406
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "package"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    return-object v0
.end method

.method public getContactPicker()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 301
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    const-string/jumbo v1, "has_tab"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 303
    const-string/jumbo v1, "isPickMultiContacts"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 304
    return-object v0
.end method

.method public getFileDocumentPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 339
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 340
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 341
    return-object v0
.end method

.method public getFirstExperienceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 385
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/provisioning/WelcomeScreenFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getGooglePlacePicker(Landroid/app/Activity;)Landroid/content/Intent;
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/google/android/gms/common/GooglePlayServicesNotAvailableException;,
            Lcom/google/android/gms/common/GooglePlayServicesRepairableException;
        }
    .end annotation

    .prologue
    .line 249
    new-instance v0, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;

    invoke-direct {v0}, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;-><init>()V

    invoke-virtual {v0, p1}, Lcom/google/android/gms/location/places/ui/PlacePicker$IntentBuilder;->build(Landroid/app/Activity;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getGooglePlayIntentForSketch()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 270
    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 271
    .local v1, "intent":Landroid/content/Intent;
    const-string/jumbo v0, "market://details?id=com.sonymobile.sketch"

    .line 272
    .local v0, "data":Ljava/lang/String;
    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 273
    return-object v1
.end method

.method public getImageContentPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 192
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.GET_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 193
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 194
    return-object v0
.end method

.method public getImageDocumentPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 186
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 187
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "image/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 188
    return-object v0
.end method

.method public getInviteJoynContactPicker(Landroid/content/Context;Lcom/sonymobile/jms/conversation/ImConversationId;Ljava/util/List;)Landroid/content/Intent;
    .locals 3
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "imConversationId"    # Lcom/sonymobile/jms/conversation/ImConversationId;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/sonymobile/jms/conversation/ImConversationId;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 172
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-virtual {p0, p1, p3}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getStartGroupChatJoynContactPicker(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;

    move-result-object v0

    .line 173
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "group-chatID"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 174
    const-string/jumbo v1, "showSubject"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 175
    return-object v0
.end method

.method public getJoynContactPicker(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getJoynFirstExperienceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 375
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/provisioning/JoynWelcomeScreenFragmentActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getNoMmsFirstExperienceIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 395
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/sonyericsson/conversations/provisioning/NoMmsWelcomeScreenActivity;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    return-object v0
.end method

.method public getRecipientPicker(I)Landroid/content/Intent;
    .locals 3
    .param p1, "maxRecipients"    # I

    .prologue
    .line 147
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonyericsson.contacts.PICK_CONVERSATIONS_TARGET"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.intent.extra.MAX_RECIPIENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    const-string/jumbo v1, "mmsEnabled"

    invoke-static {}, Lcom/android/mms/MmsConfig;->getMmsEnabled()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 153
    return-object v0
.end method

.method public getSingleContactPicker()Landroid/content/Intent;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonyericsson.android.socialphonebook.action.PICK"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "vnd.android.cursor.dir/contact"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 310
    const-string/jumbo v1, "has_tab"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 311
    const-string/jumbo v1, "isPickMultiContacts"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 312
    return-object v0
.end method

.method public getSketchIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 257
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.sketch.CREATE_SKETCH_URI"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 258
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "flag_caller_id"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 259
    return-object v0
.end method

.method public getSketchStoreIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 263
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "com.sonymobile.sketch.action.SHOW_CONTENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 264
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "com.sonymobile.sketch.extra.MODE"

    const-string/jumbo v2, "package_selection_mode"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 265
    const-string/jumbo v1, "image/x-somc-sticker-large"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 266
    return-object v0
.end method

.method public getStartGroupChatJoynContactPicker(Landroid/content/Context;Ljava/util/List;)Landroid/content/Intent;
    .locals 6
    .param p1, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/sonyericsson/conversations/model/Participant;",
            ">;)",
            "Landroid/content/Intent;"
        }
    .end annotation

    .prologue
    .line 161
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/sonyericsson/conversations/model/Participant;>;"
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getJoynContactPicker(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    .line 162
    .local v1, "intent":Landroid/content/Intent;
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 163
    .local v2, "numbers":Ljava/util/HashSet;, "Ljava/util/HashSet<Lcom/sonymobile/jms/contact/ImContactNumber;>;"
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, "participant$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sonyericsson/conversations/model/Participant;

    .line 164
    .local v3, "participant":Lcom/sonyericsson/conversations/model/Participant;
    invoke-virtual {v3}, Lcom/sonyericsson/conversations/model/Participant;->getAddress()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/sonymobile/jms/contact/ImContactNumber;->fromString(Ljava/lang/String;)Lcom/sonymobile/jms/contact/ImContactNumber;

    move-result-object v0

    .line 165
    .local v0, "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 167
    .end local v0    # "imContactNumber":Lcom/sonymobile/jms/contact/ImContactNumber;
    .end local v3    # "participant":Lcom/sonyericsson/conversations/model/Participant;
    :cond_0
    sget-object v5, Lcom/sonyericsson/conversations/contact/picker/PickJoynContactsActivity;->INTENT_EXTRA_CURRENT_JOYN_PARTICIPANTS:Ljava/lang/String;

    invoke-virtual {v1, v5, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 168
    return-object v1
.end method

.method public getVideoAndImages()Landroid/content/Intent;
    .locals 5

    .prologue
    .line 281
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 282
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "*/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 283
    const-string/jumbo v1, "android.intent.extra.MIME_TYPES"

    .line 284
    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/String;

    const-string/jumbo v3, "image/*"

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string/jumbo v3, "video/*"

    const/4 v4, 0x1

    aput-object v3, v2, v4

    .line 283
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    .line 285
    return-object v0
.end method

.method public getVideoCapture(JI)Landroid/content/Intent;
    .locals 3
    .param p1, "maxBytes"    # J
    .param p3, "quality"    # I

    .prologue
    .line 213
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.media.action.VIDEO_CAPTURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 214
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "android.intent.extra.videoQuality"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 215
    const-string/jumbo v1, "android.intent.extra.sizeLimit"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 217
    return-object v0
.end method

.method public getVideoDocumentPicker()Landroid/content/Intent;
    .locals 2

    .prologue
    .line 198
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.OPEN_DOCUMENT"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 199
    .local v0, "intent":Landroid/content/Intent;
    const-string/jumbo v1, "video/*"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 201
    return-object v0
.end method

.method public getViewActionIntent(Landroid/content/Context;Z)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "shouldAddApplicationId"    # Z

    .prologue
    .line 456
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 457
    .local v0, "intent":Landroid/content/Intent;
    if-eqz p2, :cond_0

    .line 462
    const-string/jumbo v1, "com.android.browser.application_id"

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    :cond_0
    return-object v0
.end method

.method public getWelcomeScreenIntent(Landroid/content/Context;I)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "technology"    # I
        .annotation build Lcom/sonyericsson/conversations/ui/IntentFactory$AvailableTechnology;
        .end annotation
    .end param

    .prologue
    .line 359
    packed-switch p2, :pswitch_data_0

    .line 367
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Unknown Technology"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 361
    :pswitch_0
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getJoynFirstExperienceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 363
    :pswitch_1
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getFirstExperienceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 365
    :pswitch_2
    invoke-virtual {p0, p1}, Lcom/sonyericsson/conversations/ui/IntentFactory;->getNoMmsFirstExperienceIntent(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v0

    return-object v0

    .line 359
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getWriteSettingsPermissionIntent(Landroid/content/Context;)Landroid/content/Intent;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 474
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.settings.action.MANAGE_WRITE_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 475
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "package:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 476
    return-object v0
.end method

.method public resolveIntentHandlers(Landroid/content/Context;Landroid/content/Intent;)Ljava/util/List;
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 125
    new-instance v5, Ljava/util/LinkedList;

    invoke-direct {v5}, Ljava/util/LinkedList;-><init>()V

    .line 126
    .local v5, "resolvedIntents":Ljava/util/List;, "Ljava/util/List<Landroid/content/Intent;>;"
    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 127
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, p2, v7}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v3

    .line 128
    .local v3, "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 129
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "resolveInfo$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    .line 130
    .local v1, "resolveInfo":Landroid/content/pm/ResolveInfo;
    iget-object v6, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v6, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 131
    .local v0, "packageName":Ljava/lang/String;
    new-instance v4, Landroid/content/Intent;

    invoke-direct {v4, p2}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 132
    .local v4, "resolvedIntent":Landroid/content/Intent;
    invoke-virtual {v4, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 133
    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 137
    .end local v0    # "packageName":Ljava/lang/String;
    .end local v1    # "resolveInfo":Landroid/content/pm/ResolveInfo;
    .end local v2    # "resolveInfo$iterator":Ljava/util/Iterator;
    .end local v3    # "resolveInfoList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v4    # "resolvedIntent":Landroid/content/Intent;
    :cond_0
    return-object v5
.end method

.method public setExplicitPackageForContent(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "mimeType"    # Ljava/lang/String;

    .prologue
    .line 432
    invoke-static {p3}, Lcom/google/android/mms/ContentType;->isImageType(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    .line 433
    const-string/jumbo v1, "com.sonyericsson.album"

    .line 432
    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 434
    const-string/jumbo v0, "com.sonyericsson.album"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 436
    :cond_0
    return-object p2
.end method
