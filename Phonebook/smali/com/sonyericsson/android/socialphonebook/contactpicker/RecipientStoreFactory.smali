.class public Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;
.super Ljava/lang/Object;
.source "RecipientStoreFactory.java"


# static fields
.field private static sHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/app/Activity;",
            "Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;",
            ">;"
        }
    .end annotation
.end field

.field private static sInstance:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 16
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sInstance:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    .line 18
    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    .line 15
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static declared-synchronized getInstance()Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;
    .locals 2

    .prologue
    const-class v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    monitor-enter v1

    .line 21
    :try_start_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sInstance:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    if-nez v0, :cond_0

    .line 22
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    .line 23
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    invoke-direct {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;-><init>()V

    sput-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sInstance:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    .line 25
    :cond_0
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sInstance:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static declared-synchronized reset()V
    .locals 2

    .prologue
    const-class v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;

    monitor-enter v0

    .line 44
    const/4 v1, 0x0

    :try_start_0
    sput-object v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sInstance:Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 43
    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public declared-synchronized getRecipientItemStore(Landroid/app/Activity;I)Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;
    .locals 2
    .param p1, "parent"    # Landroid/app/Activity;
    .param p2, "maxNumber"    # I

    .prologue
    monitor-enter p0

    .line 29
    :try_start_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 30
    new-instance v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-direct {v0, p2}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;-><init>(I)V

    .line 31
    .local v0, "store":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .end local v0    # "store":Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;
    :cond_0
    sget-object v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public removeRecipientItemStore(Landroid/app/Activity;)V
    .locals 1
    .param p1, "parent"    # Landroid/app/Activity;

    .prologue
    .line 37
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;

    invoke-virtual {v0}, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientItemStore;->clear()V

    .line 39
    sget-object v0, Lcom/sonyericsson/android/socialphonebook/contactpicker/RecipientStoreFactory;->sHashMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 36
    :cond_0
    return-void
.end method
