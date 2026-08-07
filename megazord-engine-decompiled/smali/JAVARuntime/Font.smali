.class public LJAVARuntime/Font;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime LJAVARuntime/ClassCategory;
    cat = {
        "Fonts"
    }
.end annotation


# instance fields
.field public transient font:LLb/a;
    .annotation runtime LZ6/g;
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 7
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method

.method public constructor <init>(LLb/a;)V
    .locals 0
    .annotation runtime LZ6/g;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "font"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    .line 3
    iput-object p1, p0, LJAVARuntime/Font;->font:LLb/a;

    return-void
.end method

.method public constructor <init>(Lc9/a;)V
    .locals 0
    .annotation runtime LG8/c;
    .end annotation

    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "engine"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    invoke-static {p0}, Lcom/itsmagic/engine/Activities/Editor/Panels/Profiler/MemoryProfiler/AllocatorWatcher;->notify(Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public getResolution()I
    .locals 1
    .annotation runtime LJAVARuntime/JRDoc_EN;
        value = "Returns the resolution of the font."
    .end annotation

    .annotation runtime LJAVARuntime/JRDoc_PT;
        value = "Retorna a resolu\u00e7\u00e3o da fonte."
    .end annotation

    iget-object v0, p0, LJAVARuntime/Font;->font:LLb/a;

    invoke-virtual {v0}, LLb/a;->e()I

    move-result v0

    return v0
.end method
