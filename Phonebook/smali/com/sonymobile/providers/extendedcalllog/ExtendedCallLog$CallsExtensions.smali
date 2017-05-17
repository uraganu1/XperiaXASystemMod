.class public final Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;
.super Ljava/lang/Object;
.source "ExtendedCallLog.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "CallsExtensions"
.end annotation


# static fields
.field public static final CALLER_LOCATION:Ljava/lang/String; = "application/vnd.sonymobile.holla.callerlocation"

.field public static final CALL_ID:Ljava/lang/String; = "call_id"

.field public static final CALL_SUBJECT:Ljava/lang/String; = "application/vnd.sonymobile.holla.callsubject"

.field public static final CONFERENCE_CALL:Ljava/lang/String; = "application/vnd.sonymobile.conferencecall"

.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/calls_extensions_somc"

.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/calls_extensions_somc"

.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final EXTENSION:Ljava/lang/String; = "extension"

.field public static final HAS_CALL_ITEMS:Ljava/lang/String; = "application/vnd.sonymobile.holla.hasitems"

.field public static final HIGH_DEFINITION_CALL:Ljava/lang/String; = "application/vnd.sonymobile.highdefinitioncall"

.field public static final URGENT_CALL:Ljava/lang/String; = "application/vnd.sonymobile.holla.urgentcall"

.field public static final VALUE:Ljava/lang/String; = "value"

.field public static final VIDEO_CALL:Ljava/lang/String; = "application/vnd.sonymobile.videocall"


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 147
    sget-object v0, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "calls_extensions_somc"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;->CONTENT_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 142
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static buildCallExtensionIdUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 234
    sget-object v0, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCallExtensionsRecentSubjectsUri()Landroid/net/Uri;
    .locals 2

    .prologue
    .line 252
    sget-object v0, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "recent_subjects"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static buildCallExtensionsUri(J)Landroid/net/Uri;
    .locals 2

    .prologue
    .line 242
    sget-object v0, Lcom/sonymobile/providers/extendedcalllog/ExtendedCallLog$CallsExtensions;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "lookup"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    const-string/jumbo v1, "call_id"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendEncodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-static {p0, p1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method
