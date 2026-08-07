.class public final synthetic LV2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements LR2/t;


# instance fields
.field public final synthetic b:LV2/a$b;


# direct methods
.method public synthetic constructor <init>(LV2/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LV2/b;->b:LV2/a$b;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, LV2/b;->b:LV2/a$b;

    invoke-static {v0, p1}, LV2/a$b;->c(LV2/a$b;Ljava/lang/Object;)LV2/u;

    move-result-object p1

    return-object p1
.end method
