.class public Landroidx/fragment/app/FragmentController;
.super Ljava/lang/Object;
.source "FragmentController.java"


# instance fields
.field private final mHost:Landroidx/fragment/app/FragmentHostCallback;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Landroidx/fragment/app/FragmentHostCallback;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;)V"
        }
    .end annotation

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    return-void
.end method

.method public static createController(Landroidx/fragment/app/FragmentHostCallback;)Landroidx/fragment/app/FragmentController;
    .locals 2
    .param p0    # Landroidx/fragment/app/FragmentHostCallback;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/fragment/app/FragmentHostCallback<",
            "*>;)",
            "Landroidx/fragment/app/FragmentController;"
        }
    .end annotation

    .line 57
    new-instance v0, Landroidx/fragment/app/FragmentController;

    const-string v1, "callbacks == null"

    invoke-static {p0, v1}, Landroidx/core/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/FragmentHostCallback;

    invoke-direct {v0, p0}, Landroidx/fragment/app/FragmentController;-><init>(Landroidx/fragment/app/FragmentHostCallback;)V

    return-object v0
.end method


# virtual methods
.method public attachHost(Landroidx/fragment/app/Fragment;)V
    .locals 2
    .param p1    # Landroidx/fragment/app/Fragment;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 116
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    iget-object v1, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    invoke-virtual {v0, v1, v1, p1}, Landroidx/fragment/app/FragmentManagerImpl;->attachController(Landroidx/fragment/app/FragmentHostCallback;Landroidx/fragment/app/FragmentContainer;Landroidx/fragment/app/Fragment;)V

    return-void
.end method

.method public dispatchActivityCreated()V
    .locals 1

    .line 246
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchActivityCreated()V

    return-void
.end method

.method public dispatchConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1    # Landroid/content/res/Configuration;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 362
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    return-void
.end method

.method public dispatchContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 424
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public dispatchCreate()V
    .locals 1

    .line 235
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreate()V

    return-void
.end method

.method public dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Landroid/view/MenuInflater;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 386
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result p1

    return p1
.end method

.method public dispatchDestroy()V
    .locals 1

    .line 329
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroy()V

    return-void
.end method

.method public dispatchDestroyView()V
    .locals 1

    .line 308
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchDestroyView()V

    return-void
.end method

.method public dispatchLowMemory()V
    .locals 1

    .line 374
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchLowMemory()V

    return-void
.end method

.method public dispatchMultiWindowModeChanged(Z)V
    .locals 1

    .line 340
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchMultiWindowModeChanged(Z)V

    return-void
.end method

.method public dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 1
    .param p1    # Landroid/view/MenuItem;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 411
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result p1

    return p1
.end method

.method public dispatchOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 435
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    return-void
.end method

.method public dispatchPause()V
    .locals 1

    .line 279
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPause()V

    return-void
.end method

.method public dispatchPictureInPictureModeChanged(Z)V
    .locals 1

    .line 351
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPictureInPictureModeChanged(Z)V

    return-void
.end method

.method public dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 1
    .param p1    # Landroid/view/Menu;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 398
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result p1

    return p1
.end method

.method public dispatchReallyStop()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dispatchResume()V
    .locals 1

    .line 268
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchResume()V

    return-void
.end method

.method public dispatchStart()V
    .locals 1

    .line 257
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStart()V

    return-void
.end method

.method public dispatchStop()V
    .locals 1

    .line 290
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->dispatchStop()V

    return-void
.end method

.method public doLoaderDestroy()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderRetain()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public doLoaderStop(Z)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p2    # Ljava/io/FileDescriptor;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/io/PrintWriter;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public execPendingActions()Z
    .locals 1

    .line 446
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v0

    return v0
.end method

.method public findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 92
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p1

    return-object p1
.end method

.method public getActiveFragments(Ljava/util/List;)Ljava/util/List;
    .locals 0
    .param p1    # Ljava/util/List;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .line 108
    iget-object p1, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object p1, p1, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManagerImpl;->getActiveFragments()Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public getActiveFragmentsCount()I
    .locals 1

    .line 99
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->getActiveFragmentCount()I

    move-result v0

    return v0
.end method

.method public getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;
    .locals 1
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .line 69
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    return-object v0
.end method

.method public getSupportLoaderManager()Landroidx/loader/app/LoaderManager;
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "UnknownNullness"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 83
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Loaders are managed separately from FragmentController, use LoaderManager.getInstance() to obtain a LoaderManager."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public noteStateNotSaved()V
    .locals 1

    .line 141
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->noteStateNotSaved()V

    return-void
.end method

.method public onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # Landroid/content/Context;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 134
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroidx/fragment/app/FragmentManagerImpl;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public reportLoaderStart()V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V
    .locals 1
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Landroidx/fragment/app/FragmentManagerNonConfig;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 180
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1, p2}, Landroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V
    .locals 3
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcelable;",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 165
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    new-instance v1, Landroidx/fragment/app/FragmentManagerNonConfig;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2, v2}, Landroidx/fragment/app/FragmentManagerNonConfig;-><init>(Ljava/util/Collection;Ljava/util/Map;Ljava/util/Map;)V

    invoke-virtual {v0, p1, v1}, Landroidx/fragment/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Landroidx/fragment/app/FragmentManagerNonConfig;)V

    return-void
.end method

.method public restoreLoaderNonConfig(Landroidx/collection/SimpleArrayMap;)V
    .locals 0
    .param p1    # Landroidx/collection/SimpleArrayMap;
        .annotation build Landroid/annotation/SuppressLint;
            value = {
                "UnknownNullness"
            }
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/loader/app/LoaderManager;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    return-void
.end method

.method public restoreSaveState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1    # Landroid/os/Parcelable;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 190
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    instance-of v1, v0, Landroidx/lifecycle/ViewModelStoreOwner;

    if-eqz v1, :cond_0

    .line 195
    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0, p1}, Landroidx/fragment/app/FragmentManagerImpl;->restoreSaveState(Landroid/os/Parcelable;)V

    return-void

    .line 191
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you\'re still using retainNestedNonConfig()."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public retainLoaderNonConfig()Landroidx/collection/SimpleArrayMap;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroidx/collection/SimpleArrayMap<",
            "Ljava/lang/String;",
            "Landroidx/loader/app/LoaderManager;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public retainNestedNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 224
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    return-object v0
.end method

.method public retainNonConfig()Ljava/util/List;
    .locals 2
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Landroidx/fragment/app/Fragment;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 208
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->retainNonConfig()Landroidx/fragment/app/FragmentManagerNonConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 209
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_0

    new-instance v1, Ljava/util/ArrayList;

    .line 210
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerNonConfig;->getFragments()Ljava/util/Collection;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return-object v1
.end method

.method public saveAllState()Landroid/os/Parcelable;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 151
    iget-object v0, p0, Landroidx/fragment/app/FragmentController;->mHost:Landroidx/fragment/app/FragmentHostCallback;

    iget-object v0, v0, Landroidx/fragment/app/FragmentHostCallback;->mFragmentManager:Landroidx/fragment/app/FragmentManagerImpl;

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v0

    return-object v0
.end method
