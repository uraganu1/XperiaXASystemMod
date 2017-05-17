.class public Lcom/android/contacts/interactions/CalendarInteraction;
.super Ljava/lang/Object;
.source "CalendarInteraction.java"

# interfaces
.implements Lcom/android/contacts/interactions/ContactInteraction;


# static fields
.field private static final CALENDAR_ICON_RES:I = 0x7f020054

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mValues:Landroid/content/ContentValues;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 43
    const-class v0, Lcom/android/contacts/interactions/CalendarInteraction;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/contacts/interactions/CalendarInteraction;->TAG:Ljava/lang/String;

    .line 42
    return-void
.end method

.method public constructor <init>(Landroid/content/ContentValues;)V
    .locals 0
    .param p1, "values"    # Landroid/content/ContentValues;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    .line 49
    return-void
.end method


# virtual methods
.method public getAccessLevel()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "accessLevel"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAllDay()Ljava/lang/Boolean;
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 153
    iget-object v1, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v2, "allDay"

    invoke-virtual {v1, v2}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getAttendeeEmail()Ljava/lang/String;
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeEmail"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeIdNamespace()Ljava/lang/String;
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeIdNamespace"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeIdentity()Ljava/lang/String;
    .locals 2

    .prologue
    .line 121
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeIdentity"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeName"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeRelationship()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeRelationship"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeStatus()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 137
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeStatus"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAttendeeType()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "attendeeType"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getAvailability()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 157
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "availability"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getBodyIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCalendarId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 161
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "calendar_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getCanInviteOthers()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 165
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "canInviteOthers"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getContentDescription(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 303
    const/4 v0, 0x0

    return-object v0
.end method

.method public getCustomAppPackage()Ljava/lang/String;
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "customAppPackage"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getCustomAppUri()Ljava/lang/String;
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "customAppUri"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 177
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "description"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "displayColor"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDtend()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 185
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "dtend"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDtstart()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "dtstart"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getDuration()Ljava/lang/String;
    .locals 2

    .prologue
    .line 193
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "duration"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventColor()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "eventColor"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getEventColorKey()Ljava/lang/String;
    .locals 2

    .prologue
    .line 201
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "eventColor_index"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventEndTimezone()Ljava/lang/String;
    .locals 2

    .prologue
    .line 205
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "eventEndTimezone"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getEventId()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 145
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "event_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getEventLocation()Ljava/lang/String;
    .locals 2

    .prologue
    .line 209
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "eventLocation"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExdate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 213
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "exdate"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getExrule()Ljava/lang/String;
    .locals 2

    .prologue
    .line 217
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "exrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getFooterIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 113
    const/4 v0, 0x0

    return-object v0
.end method

.method public getGuestsCanInviteOthers()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 221
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "guestsCanInviteOthers"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGuestsCanModify()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 225
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "guestsCanModify"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getGuestsCanSeeGuests()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 229
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "guestsCanSeeGuests"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getHasAlarm()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 233
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "hasAlarm"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getHasAttendeeData()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "hasAttendeeData"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getHasExtendedProperties()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "hasExtendedProperties"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getIcon(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 103
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f020054

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method

.method public getIconResourceId()I
    .locals 1

    .prologue
    .line 308
    const v0, 0x7f020054

    return v0
.end method

.method public getIntent()Landroid/content/Intent;
    .locals 4

    .prologue
    .line 55
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 56
    sget-object v1, Landroid/provider/CalendarContract$Events;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getEventId()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    int-to-long v2, v2

    invoke-static {v1, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v1

    .line 55
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public getInteractionDate()J
    .locals 2

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getDtstart()Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    return-wide v0
.end method

.method public getIsOrganizer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 245
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "isOrganizer"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLastDate()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 249
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "lastDate"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getLastSynced()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "lastSynced"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getOrganizer()Ljava/lang/String;
    .locals 2

    .prologue
    .line 257
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "organizer"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalAllDay()Ljava/lang/Boolean;
    .locals 2

    .prologue
    .line 261
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "originalAllDay"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsBoolean(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 265
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "original_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalInstanceTime()Ljava/lang/Long;
    .locals 2

    .prologue
    .line 269
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "originalInstanceTime"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsLong(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method

.method public getOriginalSyncId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 273
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "original_sync_id"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRdate()Ljava/lang/String;
    .locals 2

    .prologue
    .line 277
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "rdate"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getRrule()Ljava/lang/String;
    .locals 2

    .prologue
    .line 281
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "rrule"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSelfAttendeeStatus()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 285
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "selfAttendeeStatus"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getStatus()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 289
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "eventStatus"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsInteger(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 293
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "title"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUid2445()Ljava/lang/String;
    .locals 2

    .prologue
    .line 297
    iget-object v0, p0, Lcom/android/contacts/interactions/CalendarInteraction;->mValues:Landroid/content/ContentValues;

    const-string/jumbo v1, "uid2445"

    invoke-virtual {v0, v1}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getViewBody(Landroid/content/Context;)Ljava/lang/String;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 75
    const/4 v0, 0x0

    return-object v0
.end method

.method public getViewFooter(Landroid/content/Context;)Ljava/lang/String;
    .locals 12
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x0

    .line 82
    invoke-static {}, Landroid/text/format/Time;->getCurrentTimezone()Ljava/lang/String;

    move-result-object v6

    .line 84
    .local v6, "localTimezone":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getDtend()Ljava/lang/Long;

    move-result-object v9

    .line 85
    .local v9, "dateEnd":Ljava/lang/Long;
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getDtstart()Ljava/lang/Long;

    move-result-object v10

    .line 86
    .local v10, "dateStart":Ljava/lang/Long;
    if-nez v10, :cond_0

    if-nez v9, :cond_0

    .line 87
    return-object v0

    .line 88
    :cond_0
    if-nez v9, :cond_2

    .line 89
    move-object v9, v10

    .line 95
    :cond_1
    :goto_0
    invoke-virtual {v10}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 96
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getAllDay()Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    move-object v8, p1

    .line 94
    invoke-static/range {v0 .. v8}, Lcom/android/contacts/interactions/CalendarInteractionUtils;->getDisplayedDatetime(JJJLjava/lang/String;ZLandroid/content/Context;)Ljava/lang/String;

    move-result-object v11

    .line 98
    .local v11, "displayedDatetime":Ljava/lang/String;
    return-object v11

    .line 90
    .end local v11    # "displayedDatetime":Ljava/lang/String;
    :cond_2
    if-nez v10, :cond_1

    .line 91
    move-object v10, v9

    goto :goto_0
.end method

.method public getViewHeader(Landroid/content/Context;)Ljava/lang/String;
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/android/contacts/interactions/CalendarInteraction;->getTitle()Ljava/lang/String;

    move-result-object v0

    .line 67
    .local v0, "title":Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090187

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 70
    :cond_0
    return-object v0
.end method
