.class final Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;
.super Lcom/android/server/IntentResolver;
.source "PackageManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/PackageManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ProviderIntentResolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/server/IntentResolver",
        "<",
        "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
        "Landroid/content/pm/ResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field private mFlags:I

.field private final mProviders:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap",
            "<",
            "Landroid/content/ComponentName;",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/server/pm/PackageManagerService;


# direct methods
.method static synthetic -get0(Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)Landroid/util/ArrayMap;
    .locals 1

    iget-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    return-object v0
.end method

.method private constructor <init>(Lcom/android/server/pm/PackageManagerService;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    .line 9173
    iput-object p1, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    invoke-direct {p0}, Lcom/android/server/IntentResolver;-><init>()V

    .line 9380
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    .line 9379
    iput-object v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    .line 9173
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/pm/PackageManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;-><init>(Lcom/android/server/pm/PackageManagerService;)V

    return-void
.end method


# virtual methods
.method public final addProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 6
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .prologue
    .line 9217
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 9218
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " already defined; ignoring"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9219
    return-void

    .line 9222
    :cond_0
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4, p1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9229
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9231
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_2

    .line 9232
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 9237
    .local v1, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v1}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->debugCheck()Z

    move-result v3

    if-nez v3, :cond_1

    .line 9238
    const-string/jumbo v3, "PackageManager"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "==> For Provider "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p1, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 9240
    :cond_1
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->addFilter(Landroid/content/IntentFilter;)V

    .line 9231
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9216
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    return-void
.end method

.method protected bridge synthetic allowFilterResult(Landroid/content/IntentFilter;Ljava/util/List;)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "dest"    # Ljava/util/List;

    .prologue
    .line 9264
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z

    move-result v0

    return v0
.end method

.method protected allowFilterResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;Ljava/util/List;)Z
    .locals 6
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/pm/PackageParser$ProviderIntentInfo;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .local p2, "dest":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v5, 0x0

    .line 9266
    iget-object v3, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v1, v3, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    .line 9267
    .local v1, "filterPi":Landroid/content/pm/ProviderInfo;
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_1

    .line 9268
    invoke-interface {p2, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 9269
    .local v0, "destPi":Landroid/content/pm/ProviderInfo;
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->name:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 9270
    iget-object v3, v0, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    iget-object v4, v1, Landroid/content/pm/ProviderInfo;->packageName:Ljava/lang/String;

    if-ne v3, v4, :cond_0

    .line 9271
    return v5

    .line 9267
    :cond_0
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 9274
    .end local v0    # "destPi":Landroid/content/pm/ProviderInfo;
    :cond_1
    const/4 v3, 0x1

    return v3
.end method

.method protected bridge synthetic dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/IntentFilter;)V
    .locals 0
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 9351
    check-cast p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p3    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V

    return-void
.end method

.method protected dumpFilter(Ljava/io/PrintWriter;Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)V
    .locals 1
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .prologue
    .line 9353
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9355
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 9354
    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9356
    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(C)V

    .line 9357
    iget-object v0, p3, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 9358
    const-string/jumbo v0, " filter "

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9359
    invoke-static {p3}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 9352
    return-void
.end method

.method protected dumpFilterLabel(Ljava/io/PrintWriter;Ljava/lang/String;Ljava/lang/Object;I)V
    .locals 2
    .param p1, "out"    # Ljava/io/PrintWriter;
    .param p2, "prefix"    # Ljava/lang/String;
    .param p3, "label"    # Ljava/lang/Object;
    .param p4, "count"    # I

    .prologue
    move-object v0, p3

    .line 9368
    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    .line 9369
    .local v0, "provider":Landroid/content/pm/PackageParser$Provider;
    invoke-virtual {p1, p2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9370
    invoke-static {v0}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 9369
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9371
    const/16 v1, 0x20

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 9372
    invoke-virtual {v0, p1}, Landroid/content/pm/PackageParser$Provider;->printComponentShortName(Ljava/io/PrintWriter;)V

    .line 9373
    const/4 v1, 0x1

    if-le p4, v1, :cond_0

    .line 9374
    const-string/jumbo v1, " ("

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-virtual {p1, p4}, Ljava/io/PrintWriter;->print(I)V

    const-string/jumbo v1, " filters)"

    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 9376
    :cond_0
    invoke-virtual {p1}, Ljava/io/PrintWriter;->println()V

    .line 9367
    return-void
.end method

.method protected bridge synthetic filterToLabel(Landroid/content/IntentFilter;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;

    .prologue
    .line 9363
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method protected filterToLabel(Landroid/content/pm/PackageParser$ProviderIntentInfo;)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .prologue
    .line 9364
    iget-object v0, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    return-object v0
.end method

.method protected bridge synthetic isFilterStopped(Landroid/content/IntentFilter;I)Z
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "userId"    # I

    .prologue
    .line 9283
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z

    move-result v0

    return v0
.end method

.method protected isFilterStopped(Landroid/content/pm/PackageParser$ProviderIntentInfo;I)Z
    .locals 4
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "userId"    # I

    .prologue
    const/4 v2, 0x0

    .line 9284
    sget-object v3, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v3, p2}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 9285
    const/4 v2, 0x1

    return v2

    .line 9286
    :cond_0
    iget-object v3, p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v3, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    .line 9287
    .local v0, "p":Landroid/content/pm/PackageParser$Package;
    if-eqz v0, :cond_2

    .line 9288
    iget-object v1, v0, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v1, Lcom/android/server/pm/PackageSetting;

    .line 9289
    .local v1, "ps":Lcom/android/server/pm/PackageSetting;
    if-eqz v1, :cond_2

    .line 9293
    iget v3, v1, Lcom/android/server/pm/PackageSetting;->pkgFlags:I

    and-int/lit8 v3, v3, 0x1

    if-nez v3, :cond_1

    .line 9294
    invoke-virtual {v1, p2}, Lcom/android/server/pm/PackageSetting;->getStopped(I)Z

    move-result v2

    .line 9293
    :cond_1
    return v2

    .line 9297
    .end local v1    # "ps":Lcom/android/server/pm/PackageSetting;
    :cond_2
    return v2
.end method

.method protected bridge synthetic isPackageForFilter(Ljava/lang/String;Landroid/content/IntentFilter;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/IntentFilter;

    .prologue
    .line 9301
    check-cast p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p2    # "info":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z

    move-result v0

    return v0
.end method

.method protected isPackageForFilter(Ljava/lang/String;Landroid/content/pm/PackageParser$ProviderIntentInfo;)Z
    .locals 1
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "info"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .prologue
    .line 9303
    iget-object v0, p2, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v0, v0, Landroid/content/pm/PackageParser$Package;->packageName:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method protected bridge synthetic newArray(I)[Landroid/content/IntentFilter;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 9278
    invoke-virtual {p0, p1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;

    move-result-object v0

    return-object v0
.end method

.method protected newArray(I)[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 9279
    new-array v0, p1, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    return-object v0
.end method

.method protected newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;
    .locals 9
    .param p1, "filter"    # Landroid/content/pm/PackageParser$ProviderIntentInfo;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    const/4 v8, 0x0

    .line 9309
    sget-object v5, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v5, p3}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 9310
    return-object v8

    .line 9311
    :cond_0
    move-object v0, p1

    .line 9312
    .local v0, "info":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v5, v5, Lcom/android/server/pm/PackageManagerService;->mSettings:Lcom/android/server/pm/Settings;

    iget-object v6, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    iget-object v6, v6, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget v7, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    invoke-virtual {v5, v6, v7, p3}, Lcom/android/server/pm/Settings;->isEnabledLPr(Landroid/content/pm/ComponentInfo;II)Z

    move-result v5

    if-nez v5, :cond_1

    .line 9313
    return-object v8

    .line 9315
    :cond_1
    iget-object v2, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->provider:Landroid/content/pm/PackageParser$Provider;

    .line 9316
    .local v2, "provider":Landroid/content/pm/PackageParser$Provider;
    iget-object v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->this$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v5, v5, Lcom/android/server/pm/PackageManagerService;->mSafeMode:Z

    if-eqz v5, :cond_2

    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->info:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v5, v5, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit8 v5, v5, 0x1

    if-nez v5, :cond_2

    .line 9318
    return-object v8

    .line 9320
    :cond_2
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget-object v3, v5, Landroid/content/pm/PackageParser$Package;->mExtras:Ljava/lang/Object;

    check-cast v3, Lcom/android/server/pm/PackageSetting;

    .line 9321
    .local v3, "ps":Lcom/android/server/pm/PackageSetting;
    if-nez v3, :cond_3

    .line 9322
    return-object v8

    .line 9324
    :cond_3
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 9325
    invoke-virtual {v3, p3}, Lcom/android/server/pm/PackageSetting;->readUserState(I)Landroid/content/pm/PackageUserState;

    move-result-object v6

    .line 9324
    invoke-static {v2, v5, v6, p3}, Landroid/content/pm/PackageParser;->generateProviderInfo(Landroid/content/pm/PackageParser$Provider;ILandroid/content/pm/PackageUserState;I)Landroid/content/pm/ProviderInfo;

    move-result-object v1

    .line 9326
    .local v1, "pi":Landroid/content/pm/ProviderInfo;
    if-nez v1, :cond_4

    .line 9327
    return-object v8

    .line 9329
    :cond_4
    new-instance v4, Landroid/content/pm/ResolveInfo;

    invoke-direct {v4}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 9330
    .local v4, "res":Landroid/content/pm/ResolveInfo;
    iput-object v1, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    .line 9331
    iget v5, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    and-int/lit8 v5, v5, 0x40

    if-eqz v5, :cond_5

    .line 9332
    iput-object p1, v4, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    .line 9334
    :cond_5
    invoke-virtual {v0}, Landroid/content/pm/PackageParser$ProviderIntentInfo;->getPriority()I

    move-result v5

    iput v5, v4, Landroid/content/pm/ResolveInfo;->priority:I

    .line 9335
    iget-object v5, v2, Landroid/content/pm/PackageParser$Provider;->owner:Landroid/content/pm/PackageParser$Package;

    iget v5, v5, Landroid/content/pm/PackageParser$Package;->mPreferredOrder:I

    iput v5, v4, Landroid/content/pm/ResolveInfo;->preferredOrder:I

    .line 9336
    iput p2, v4, Landroid/content/pm/ResolveInfo;->match:I

    .line 9337
    iget-boolean v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->hasDefault:Z

    iput-boolean v5, v4, Landroid/content/pm/ResolveInfo;->isDefault:Z

    .line 9338
    iget v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->labelRes:I

    iput v5, v4, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 9339
    iget-object v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    iput-object v5, v4, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 9340
    iget v5, v0, Landroid/content/pm/PackageParser$ProviderIntentInfo;->icon:I

    iput v5, v4, Landroid/content/pm/ResolveInfo;->icon:I

    .line 9341
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->providerInfo:Landroid/content/pm/ProviderInfo;

    iget-object v5, v5, Landroid/content/pm/ProviderInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    invoke-virtual {v5}, Landroid/content/pm/ApplicationInfo;->isSystemApp()Z

    move-result v5

    iput-boolean v5, v4, Landroid/content/pm/ResolveInfo;->system:Z

    .line 9342
    return-object v4
.end method

.method protected bridge synthetic newResult(Landroid/content/IntentFilter;II)Ljava/lang/Object;
    .locals 1
    .param p1, "filter"    # Landroid/content/IntentFilter;
    .param p2, "match"    # I
    .param p3, "userId"    # I

    .prologue
    .line 9307
    check-cast p1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .end local p1    # "filter":Landroid/content/IntentFilter;
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->newResult(Landroid/content/pm/PackageParser$ProviderIntentInfo;II)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;II)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "II)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 9183
    sget-object v1, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v1, p4}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v1

    if-nez v1, :cond_0

    .line 9184
    const/4 v0, 0x0

    return-object v0

    .line 9185
    :cond_0
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 9187
    const/high16 v1, 0x10000

    and-int/2addr v1, p3

    if-eqz v1, :cond_1

    const/4 v0, 0x1

    .line 9186
    :cond_1
    invoke-super {p0, p1, p2, v0, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "defaultOnly"    # Z
    .param p4, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "ZI)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9177
    if-eqz p3, :cond_0

    const/high16 v0, 0x10000

    :goto_0
    iput v0, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 9178
    invoke-super {p0, p1, p2, p3, p4}, Lcom/android/server/IntentResolver;->queryIntent(Landroid/content/Intent;Ljava/lang/String;ZI)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 9177
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public queryIntentForPackage(Landroid/content/Intent;Ljava/lang/String;ILjava/util/ArrayList;I)Ljava/util/List;
    .locals 10
    .param p1, "intent"    # Landroid/content/Intent;
    .param p2, "resolvedType"    # Ljava/lang/String;
    .param p3, "flags"    # I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/pm/PackageParser$Provider;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .local p4, "packageProviders":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$Provider;>;"
    const/4 v1, 0x0

    .line 9192
    sget-object v0, Lcom/android/server/pm/PackageManagerService;->sUserManager:Lcom/android/server/pm/UserManagerService;

    invoke-virtual {v0, p5}, Lcom/android/server/pm/UserManagerService;->exists(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 9193
    return-object v1

    .line 9194
    :cond_0
    if-nez p4, :cond_1

    .line 9195
    return-object v1

    .line 9197
    :cond_1
    iput p3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mFlags:I

    .line 9198
    const/high16 v0, 0x10000

    and-int/2addr v0, p3

    if-eqz v0, :cond_3

    const/4 v3, 0x1

    .line 9199
    .local v3, "defaultOnly":Z
    :goto_0
    invoke-virtual {p4}, Ljava/util/ArrayList;->size()I

    move-result v6

    .line 9201
    .local v6, "N":I
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v6}, Ljava/util/ArrayList;-><init>(I)V

    .line 9204
    .local v4, "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_1
    if-ge v8, v6, :cond_4

    .line 9205
    invoke-virtual {p4, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/PackageParser$Provider;

    iget-object v9, v0, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    .line 9206
    .local v9, "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    if-eqz v9, :cond_2

    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-lez v0, :cond_2

    .line 9208
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v7, v0, [Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 9209
    .local v7, "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {v9, v7}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 9210
    invoke-virtual {v4, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 9204
    .end local v7    # "array":[Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 9198
    .end local v3    # "defaultOnly":Z
    .end local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    .end local v6    # "N":I
    .end local v8    # "i":I
    .end local v9    # "intentFilters":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    :cond_3
    const/4 v3, 0x0

    .restart local v3    # "defaultOnly":Z
    goto :goto_0

    .restart local v4    # "listCut":Ljava/util/ArrayList;, "Ljava/util/ArrayList<[Landroid/content/pm/PackageParser$ProviderIntentInfo;>;"
    .restart local v6    # "N":I
    .restart local v8    # "i":I
    :cond_4
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v5, p5

    .line 9213
    invoke-super/range {v0 .. v5}, Lcom/android/server/IntentResolver;->queryIntentFromList(Landroid/content/Intent;Ljava/lang/String;ZLjava/util/ArrayList;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public final removeProvider(Landroid/content/pm/PackageParser$Provider;)V
    .locals 5
    .param p1, "p"    # Landroid/content/pm/PackageParser$Provider;

    .prologue
    .line 9245
    iget-object v3, p0, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->mProviders:Landroid/util/ArrayMap;

    invoke-virtual {p1}, Landroid/content/pm/PackageParser$Provider;->getComponentName()Landroid/content/ComponentName;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9251
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 9253
    .local v0, "NI":I
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 9254
    iget-object v3, p1, Landroid/content/pm/PackageParser$Provider;->intents:Ljava/util/ArrayList;

    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageParser$ProviderIntentInfo;

    .line 9259
    .local v1, "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    invoke-virtual {p0, v1}, Lcom/android/server/pm/PackageManagerService$ProviderIntentResolver;->removeFilter(Landroid/content/IntentFilter;)V

    .line 9253
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 9244
    .end local v1    # "intent":Landroid/content/pm/PackageParser$ProviderIntentInfo;
    :cond_0
    return-void
.end method

.method protected sortResults(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 9347
    .local p1, "results":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {}, Lcom/android/server/pm/PackageManagerService;->-get6()Ljava/util/Comparator;

    move-result-object v0

    invoke-static {p1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 9346
    return-void
.end method
