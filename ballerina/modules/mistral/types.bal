// AUTO-GENERATED FILE. DO NOT MODIFY.
// This file is auto-generated by the Ballerina OpenAPI tool.

import ballerina/constraint;
import ballerina/data.jsondata;
import ballerina/http;

# Represents the Queries record for the operation: jobs_api_routes_fine_tuning_create_fine_tuning_job
public type JobsApiRoutesFineTuningCreateFineTuningJobQueries record {
    @http:Query {name: "dry_run"}
    boolean? dryRun?;
};

public type ToolCall record {|
    FunctionCall 'function;
    int index = 0;
    string id = "null";
    ToolTypes 'type?;
|};

public type JsonSchema record {|
    record {} schema;
    string name;
    string? description?;
    boolean strict = false;
|};

public type ChatCompletionChoice record {
    @jsondata:Name {value: "finish_reason"}
    "stop"|"length"|"model_length"|"error"|"tool_calls" finishReason;
    int index;
    AssistantMessage message;
};

public type OCRResponse record {|
    # List of OCR info for pages.
    OCRPageObject[] pages;
    # The model used to generate the OCR.
    string model;
    @jsondata:Name {value: "usage_info"}
    OCRUsageInfo usageInfo;
|};

public type ArchiveFTModelOut record {
    boolean archived = true;
    string id;
    "model" 'object = "model";
};

public type EventOut record {
    record {}? data?;
    # The name of the event.
    string name;
    @jsondata:Name {value: "created_at"}
    int createdAt;
};

public type GithubRepositoryIn record {
    string owner;
    string? ref?;
    string name;
    @constraint:Number {minValueExclusive: 0}
    decimal weight = 1;
    "github" 'type = "github";
    string token;
};

# Represents the Queries record for the operation: jobs_api_routes_fine_tuning_get_fine_tuning_jobs
public type JobsApiRoutesFineTuningGetFineTuningJobsQueries record {
    @http:Query {name: "wandb_project"}
    string? wandbProject?;
    @http:Query {name: "wandb_name"}
    string? wandbName?;
    @http:Query {name: "created_after"}
    string? createdAfter?;
    # The model name used for fine-tuning to filter on. When set, the other results are not displayed.
    string? model?;
    # The page number of the results to be returned.
    int page = 0;
    # The model suffix to filter on. When set, the other results are not displayed.
    string? suffix?;
    @http:Query {name: "created_by_me"}
    boolean createdByMe = false;
    @http:Query {name: "page_size"}
    int pageSize = 100;
    # The current job state to filter on. When set, the other results are not displayed.
    "QUEUED"|"STARTED"|"VALIDATING"|"VALIDATED"|"RUNNING"|"FAILED_VALIDATION"|"FAILED"|"SUCCESS"|"CANCELLED"|"CANCELLATION_REQUESTED"? status?;
};

public type FileSchema record {
    # The name of the uploaded file.
    string filename;
    FilePurpose purpose;
    # The size of the file, in bytes.
    int bytes;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    # The unique identifier of the file.
    string id;
    Source 'source;
    @jsondata:Name {value: "sample_type"}
    SampleType sampleType;
    @jsondata:Name {value: "num_lines"}
    int? numLines?;
    # The object type, which is always "file".
    string 'object;
};

# The fine-tuning hyperparameter settings used in a fine-tune job.
public type TrainingParametersIn record {
    @jsondata:Name {value: "fim_ratio"}
    decimal? fimRatio = 0.9;
    @jsondata:Name {value: "weight_decay"}
    decimal? weightDecay = 0.1;
    @jsondata:Name {value: "training_steps"}
    int? trainingSteps?;
    @jsondata:Name {value: "learning_rate"}
    decimal learningRate = 0.00010;
    decimal? epochs?;
    @jsondata:Name {value: "seq_len"}
    int? seqLen?;
    @jsondata:Name {value: "warmup_fraction"}
    decimal? warmupFraction = 0.05;
};

# Provides a set of configurations for controlling the behaviours when communicating with a remote HTTP endpoint.
@display {label: "Connection Config"}
public type ConnectionConfig record {|
    # Configurations related to client authentication
    http:BearerTokenConfig auth;
    # The HTTP version understood by the client
    http:HttpVersion httpVersion = http:HTTP_2_0;
    # Configurations related to HTTP/1.x protocol
    http:ClientHttp1Settings http1Settings?;
    # Configurations related to HTTP/2 protocol
    http:ClientHttp2Settings http2Settings?;
    # The maximum time to wait (in seconds) for a response before closing the connection
    decimal timeout = 60;
    # The choice of setting `forwarded`/`x-forwarded` header
    string forwarded = "disable";
    # Configurations associated with request pooling
    http:PoolConfiguration poolConfig?;
    # HTTP caching related configurations
    http:CacheConfig cache?;
    # Specifies the way of handling compression (`accept-encoding`) header
    http:Compression compression = http:COMPRESSION_AUTO;
    # Configurations associated with the behaviour of the Circuit Breaker
    http:CircuitBreakerConfig circuitBreaker?;
    # Configurations associated with retrying
    http:RetryConfig retryConfig?;
    # Configurations associated with inbound response size limits
    http:ResponseLimitConfigs responseLimits?;
    # SSL/TLS-related options
    http:ClientSecureSocket secureSocket?;
    # Proxy server related options
    http:ProxyConfig proxy?;
    # Enables the inbound payload validation functionality which provided by the constraint package. Enabled by default
    boolean validation = true;
    # Enables relaxed data binding on the client side. When enabled, `nil` values are treated as optional, 
    # and absent fields are handled as `nilable` types. Enabled by default.
    boolean laxDataBinding = true;
|};

public type FTModelCapabilitiesOut record {
    @jsondata:Name {value: "completion_chat"}
    boolean completionChat = true;
    @jsondata:Name {value: "function_calling"}
    boolean functionCalling = false;
    @jsondata:Name {value: "fine_tuning"}
    boolean fineTuning = false;
    @jsondata:Name {value: "completion_fim"}
    boolean completionFim = false;
};

public type ResponseFormat record {|
    @jsondata:Name {value: "json_schema"}
    JsonSchema jsonSchema?;
    ResponseFormats 'type?;
|};

public type UnarchiveFTModelOut record {
    boolean archived = false;
    string id;
    "model" 'object = "model";
};

public type TextChunk record {|
    string text;
    "text" 'type = "text";
|};

public type WandbIntegrationOut record {
    # A display name to set for the run. If not set, will use the job ID as the name.
    string? name?;
    # The name of the project that the new run will be created under.
    string project;
    "wandb" 'type = "wandb";
    @jsondata:Name {value: "run_name"}
    string? runName?;
};

public type ChatCompletionResponse record {
    *ChatCompletionResponseBase;
    ChatCompletionChoice[] choices?;
    string id;
    string model;
    string 'object;
    UsageInfo usage;
};

public type FTModelOut record {
    boolean archived;
    FTModelCapabilitiesOut capabilities;
    string[] aliases = [];
    @jsondata:Name {value: "max_context_length"}
    int maxContextLength = 32768;
    int created;
    string root;
    string? name?;
    string? description?;
    @jsondata:Name {value: "owned_by"}
    string ownedBy;
    string id;
    string job;
    "model" 'object = "model";
};

public type TrainingFile record {
    @jsondata:Name {value: "file_id"}
    string fileId;
    @constraint:Number {minValueExclusive: 0}
    decimal weight = 1;
};

public type ClassificationRequest record {|
    # Text to classify.
    string|string[] input;
    # ID of the model to use.
    string model;
|};

# An object specifying the format that the model must output. Setting to `{ "type": "json_object" }` enables JSON mode, which guarantees the message the model generates is in JSON. When using JSON mode you MUST also instruct the model to produce JSON yourself with a system or a user message.
public type ResponseFormats "text"|"json_object"|"json_schema";

public type ContentChunk TextChunk|ImageURLChunk|DocumentURLChunk|ReferenceChunk;

public type MultiPartBodyParams record {
    # The File object (not file name) to be uploaded.
    #  To upload a file and specify a custom file name you should format your request as such:
    #  ```bash
    #  file=@path/to/your/file.jsonl;filename=custom_name.jsonl
    #  ```
    #  Otherwise, you can just keep the original file name:
    #  ```bash
    #  file=@path/to/your/file.jsonl
    #  ```
    record {byte[] fileContent; string fileName;} file;
    FilePurpose purpose?;
};

public type ChatCompletionResponseBase record {
    *ResponseBase;
    int created?;
};

public type ApiEndpoint "/chat/completions"|"/embeddings"|"/fim/completions"|"/moderations"|"/chat/moderations";

public type BatchJobStatus "QUEUED"|"RUNNING"|"SUCCESS"|"FAILED"|"TIMEOUT_EXCEEDED"|"CANCELLATION_REQUESTED"|"CANCELLED";

public type FIMCompletionResponse record {
    *ChatCompletionResponse;
    string model?;
};

public type DeleteModelOut record {
    # The deletion status
    boolean deleted = true;
    # The ID of the deleted model.
    string id;
    # The object type that was deleted
    string 'object = "model";
};

public type OCRUsageInfo record {|
    @jsondata:Name {value: "pages_processed"}
    int pagesProcessed;
    @jsondata:Name {value: "doc_size_bytes"}
    int? docSizeBytes?;
|};

public type DetailedJobOut record {
    @jsondata:Name {value: "job_type"}
    string jobType;
    JobMetadataOut metadata?;
    @jsondata:Name {value: "fine_tuned_model"}
    string? fineTunedModel?;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    CheckpointOut[] checkpoints = [];
    string? suffix?;
    @jsondata:Name {value: "auto_start"}
    boolean autoStart;
    @jsondata:Name {value: "training_files"}
    string[] trainingFiles;
    (GithubRepositoryOut)[] repositories = [];
    TrainingParameters hyperparameters;
    FineTuneableModel model;
    string id;
    @jsondata:Name {value: "trained_tokens"}
    int? trainedTokens?;
    @jsondata:Name {value: "modified_at"}
    int modifiedAt;
    (WandbIntegrationOut)[]? integrations?;
    # Event items are created every time the status of a fine-tuning job changes. The timestamped list of all events is accessible here.
    EventOut[] events = [];
    "QUEUED"|"STARTED"|"VALIDATING"|"VALIDATED"|"RUNNING"|"FAILED_VALIDATION"|"FAILED"|"SUCCESS"|"CANCELLED"|"CANCELLATION_REQUESTED" status;
    @jsondata:Name {value: "validation_files"}
    string[]? validationFiles = [];
    "job" 'object = "job";
};

public type OCRPageDimensions record {|
    # Width of the image in pixels
    @constraint:Int {minValue: 0}
    int width;
    # Dots per inch of the page-image
    @constraint:Int {minValue: 0}
    int dpi;
    # Height of the image in pixels
    @constraint:Int {minValue: 0}
    int height;
|};

public type UpdateFTModelIn record {
    string? name?;
    string? description?;
};

public type ResponseBase record {
    UsageInfo usage?;
    string model?;
    string id?;
    string 'object?;
};

public type ClassificationResponse record {
    string model?;
    string id?;
    ClassificationObject[] results?;
};

public type FunctionCall record {|
    string name;
    record {}|string arguments;
|};

public type UsageInfo record {
    @jsondata:Name {value: "completion_tokens"}
    int completionTokens;
    @jsondata:Name {value: "prompt_tokens"}
    int promptTokens;
    @jsondata:Name {value: "total_tokens"}
    int totalTokens;
};

# Metrics at the step number during the fine-tuning job. Use these metrics to assess if the training is going smoothly (loss should decrease, token accuracy should increase).
public type MetricOut record {
    @jsondata:Name {value: "valid_loss"}
    decimal? validLoss?;
    @jsondata:Name {value: "valid_mean_token_accuracy"}
    decimal? validMeanTokenAccuracy?;
    @jsondata:Name {value: "train_loss"}
    decimal? trainLoss?;
};

public type UploadFileOut record {
    # The name of the uploaded file.
    string filename;
    FilePurpose purpose;
    # The size of the file, in bytes.
    int bytes;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    # The unique identifier of the file.
    string id;
    Source 'source;
    @jsondata:Name {value: "sample_type"}
    SampleType sampleType;
    @jsondata:Name {value: "num_lines"}
    int? numLines?;
    # The object type, which is always "file".
    string 'object;
};

public type BatchJobIn record {
    @jsondata:Name {value: "input_files"}
    string[] inputFiles;
    ApiEndpoint endpoint;
    record {|string...;|}? metadata?;
    @jsondata:Name {value: "timeout_hours"}
    int timeoutHours = 24;
    string model;
};

public type BatchError record {
    int count = 1;
    string message;
};

public type JobsOut record {
    int total;
    JobOut[] data = [];
    "list" 'object = "list";
};

# Represents the Queries record for the operation: files_api_routes_list_files
public type FilesApiRoutesListFilesQueries record {
    string? search?;
    FilePurpose purpose?;
    int page = 0;
    Source[]? 'source?;
    @http:Query {name: "sample_type"}
    SampleType[]? sampleType?;
    @http:Query {name: "page_size"}
    int pageSize = 100;
};

public type ReferenceChunk record {|
    @jsondata:Name {value: "reference_ids"}
    int[] referenceIds;
    "reference" 'type = "reference";
|};

# Provides settings related to HTTP/1.x protocol.
public type ClientHttp1Settings record {|
    # Specifies whether to reuse a connection for multiple requests
    http:KeepAlive keepAlive = http:KEEPALIVE_AUTO;
    # The chunking behaviour of the request
    http:Chunking chunking = http:CHUNKING_AUTO;
    # Proxy server related options
    ProxyConfig proxy?;
|};

public type OCRImageObject record {|
    @jsondata:Name {value: "bottom_right_x"}
    int? bottomRightX;
    @jsondata:Name {value: "bottom_right_y"}
    int? bottomRightY;
    @jsondata:Name {value: "image_base64"}
    string? imageBase64?;
    @jsondata:Name {value: "top_left_y"}
    int? topLeftY;
    # Image ID for extracted image in a page
    string id;
    @jsondata:Name {value: "top_left_x"}
    int? topLeftX;
|};

public type SampleType "pretrain"|"instruct"|"batch_request"|"batch_result"|"batch_error";

public type OCRRequest record {|
    # Specific pages user wants to process in various formats: single number, range, or list of both. Starts from 0
    int[]? pages?;
    @jsondata:Name {value: "image_min_size"}
    int? imageMinSize?;
    # Document to run OCR on
    DocumentURLChunk|ImageURLChunk document;
    @jsondata:Name {value: "include_image_base64"}
    boolean? includeImageBase64?;
    @jsondata:Name {value: "image_limit"}
    int? imageLimit?;
    string? model;
    string id?;
|};

# Represents the Queries record for the operation: jobs_api_routes_batch_get_batch_jobs
public type JobsApiRoutesBatchGetBatchJobsQueries record {
    record {}? metadata?;
    @http:Query {name: "created_after"}
    string? createdAfter?;
    string? model?;
    int page = 0;
    @http:Query {name: "created_by_me"}
    boolean createdByMe = false;
    @http:Query {name: "page_size"}
    int pageSize = 100;
    BatchJobStatus status?;
};

public type FilePurpose "fine-tune"|"batch";

public type LegacyJobMetadataOut record {
    @jsondata:Name {value: "data_tokens"}
    int? dataTokens?;
    @jsondata:Name {value: "train_tokens_per_step"}
    int? trainTokensPerStep?;
    # The cost of the fine-tuning job.
    decimal? cost?;
    @jsondata:Name {value: "cost_currency"}
    string? costCurrency?;
    @jsondata:Name {value: "estimated_start_time"}
    int? estimatedStartTime?;
    @jsondata:Name {value: "expected_duration_seconds"}
    int? expectedDurationSeconds?;
    boolean deprecated = true;
    string details;
    @jsondata:Name {value: "train_tokens"}
    int? trainTokens?;
    # The number of complete passes through the entire training dataset.
    decimal? epochs?;
    @jsondata:Name {value: "training_steps"}
    int? trainingSteps?;
    "job.metadata" 'object = "job.metadata";
};

# this restriction of `Function` is used to select a specific function to call
public type FunctionName record {|
    string name;
|};

public type DeleteFileOut record {
    # The deletion status.
    boolean deleted;
    # The ID of the deleted file.
    string id;
    # The object type that was deleted
    string 'object;
};

public type DocumentURLChunk record {|
    @jsondata:Name {value: "document_name"}
    string? documentName?;
    string 'type = "document_url";
    @jsondata:Name {value: "document_url"}
    string documentUrl;
|};

public type RetrieveFileOut record {
    # The name of the uploaded file.
    string filename;
    boolean deleted;
    FilePurpose purpose;
    # The size of the file, in bytes.
    int bytes;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    # The unique identifier of the file.
    string id;
    Source 'source;
    @jsondata:Name {value: "sample_type"}
    SampleType sampleType;
    @jsondata:Name {value: "num_lines"}
    int? numLines?;
    # The object type, which is always "file".
    string 'object;
};

public type ToolMessage record {|
    "tool" role = "tool";
    @jsondata:Name {value: "tool_call_id"}
    string? toolCallId?;
    string? name?;
    string|ContentChunk[]? content;
|};

# Extra fields for fine-tuned models.
public type FTModelCard record {
    ModelCapabilities capabilities;
    string[] aliases = [];
    int created?;
    string? description?;
    @jsondata:Name {value: "owned_by"}
    string ownedBy = "mistralai";
    string? deprecation?;
    "fine-tuned" 'type = "fine-tuned";
    boolean archived = false;
    @jsondata:Name {value: "max_context_length"}
    int maxContextLength = 32768;
    string root;
    string? name?;
    @jsondata:Name {value: "default_model_temperature"}
    decimal? defaultModelTemperature?;
    string id;
    string job;
    string 'object = "model";
};

public type Tool record {|
    Function 'function;
    ToolTypes 'type?;
|};

public type BatchJobsOut record {
    int total;
    BatchJobOut[] data = [];
    "list" 'object = "list";
};

public type AssistantMessage record {|
    "assistant" role = "assistant";
    # Set this to `true` when adding an assistant message as prefix to condition the model response. The role of the prefix message is to force the model to start its answer by the content of the message.
    boolean prefix = false;
    @jsondata:Name {value: "tool_calls"}
    ToolCall[]? toolCalls?;
    string|ContentChunk[]? content?;
|};

public type Prediction record {|
    string 'type = "content";
    string content = "";
|};

public type GithubRepositoryOut record {
    string owner;
    string? ref?;
    string name;
    @constraint:Number {minValueExclusive: 0}
    decimal weight = 1;
    "github" 'type = "github";
    @jsondata:Name {value: "commit_id"}
    string commitId;
};

public type ImageURL record {|
    string? detail?;
    string url;
|};

public type ChatModerationRequest record {|
    @jsondata:Name {value: "truncate_for_context_length"}
    boolean truncateForContextLength = false;
    # Chat to classify
    (SystemMessage|UserMessage|AssistantMessage|ToolMessage)[]|(SystemMessage|UserMessage|AssistantMessage|ToolMessage)[][] input;
    string model;
|};

public type ModelCapabilities record {
    @jsondata:Name {value: "completion_chat"}
    boolean completionChat = true;
    @jsondata:Name {value: "function_calling"}
    boolean functionCalling = true;
    boolean vision = false;
    @jsondata:Name {value: "fine_tuning"}
    boolean fineTuning = false;
    @jsondata:Name {value: "completion_fim"}
    boolean completionFim = false;
};

public type EmbeddingResponseData record {
    int index?;
    decimal[] embedding?;
    string 'object?;
};

public type ListFilesOut record {
    int total;
    FileSchema[] data;
    string 'object;
};

public type ToolTypes "function";

public type OCRPageObject record {|
    # List of all extracted images in the page
    OCRImageObject[] images;
    # The markdown string response of the page
    string markdown;
    # The page index in a pdf document starting from 0
    @constraint:Int {minValue: 0}
    int index;
    OCRPageDimensions dimensions;
|};

public type FileSignedURL record {
    string url;
};

# ToolChoice is either a ToolChoiceEnum or a ToolChoice
public type ToolChoice record {|
    FunctionName 'function;
    ToolTypes 'type?;
|};

# The name of the model to fine-tune.
public type FineTuneableModel "open-mistral-7b"|"mistral-small-latest"|"codestral-latest"|"mistral-large-latest"|"open-mistral-nemo"|"ministral-3b-latest";

public type BaseModelCard record {
    ModelCapabilities capabilities;
    string[] aliases = [];
    @jsondata:Name {value: "max_context_length"}
    int maxContextLength = 32768;
    int created?;
    string? name?;
    @jsondata:Name {value: "default_model_temperature"}
    decimal? defaultModelTemperature?;
    string? description?;
    @jsondata:Name {value: "owned_by"}
    string ownedBy = "mistralai";
    string id;
    string? deprecation?;
    "base" 'type = "base";
    string 'object = "model";
};

public type WandbIntegration record {
    @jsondata:Name {value: "api_key"}
    string apiKey;
    # A display name to set for the run. If not set, will use the job ID as the name.
    string? name?;
    # The name of the project that the new run will be created under.
    string project;
    "wandb" 'type = "wandb";
    @jsondata:Name {value: "run_name"}
    string? runName?;
};

# Represents the Queries record for the operation: files_api_routes_get_signed_url
public type FilesApiRoutesGetSignedUrlQueries record {
    # Number of hours before the url becomes invalid. Defaults to 24h
    int expiry = 24;
};

public type FIMCompletionRequest record {|
    @jsondata:Name {value: "top_p"}
    decimal topP = 1;
    @jsondata:Name {value: "random_seed"}
    int? randomSeed?;
    # Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
    string|string[] stop?;
    @jsondata:Name {value: "max_tokens"}
    int? maxTokens?;
    # Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
    boolean 'stream = false;
    # What sampling temperature to use, we recommend between 0.0 and 0.7. Higher values like 0.7 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both. The default value varies depending on the model you are targeting. Call the `/models` endpoint to retrieve the appropriate value.
    decimal? temperature?;
    # ID of the model to use. Only compatible for now with:
    #   - `codestral-2405`
    #   - `codestral-latest`
    string model = "codestral-2405";
    # Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
    string? suffix = "";
    # The text/code to complete.
    string prompt;
    @jsondata:Name {value: "min_tokens"}
    int? minTokens?;
|};

public type SystemMessage record {|
    "system" role = "system";
    string|TextChunk[] content;
|};

public type AgentsCompletionRequest record {|
    @jsondata:Name {value: "random_seed"}
    int? randomSeed?;
    @jsondata:Name {value: "agent_id"}
    string agentId;
    @jsondata:Name {value: "max_tokens"}
    int? maxTokens?;
    @jsondata:Name {value: "presence_penalty"}
    decimal presencePenalty = 0;
    Tool[]? tools?;
    # Number of completions to return for each request, input tokens are only billed once.
    int? n?;
    @jsondata:Name {value: "response_format"}
    ResponseFormat responseFormat?;
    @jsondata:Name {value: "frequency_penalty"}
    decimal frequencyPenalty = 0;
    # Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
    string|string[] stop?;
    # Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
    boolean 'stream = false;
    Prediction prediction?;
    # The prompt(s) to generate completions for, encoded as a list of dict with role and content.
    (SystemMessage|UserMessage|AssistantMessage|ToolMessage)[] messages;
    @jsondata:Name {value: "tool_choice"}
    ToolChoice|ToolChoiceEnum toolChoice = "auto";
|};

public type JobMetadataOut record {
    @jsondata:Name {value: "data_tokens"}
    int? dataTokens?;
    @jsondata:Name {value: "train_tokens_per_step"}
    int? trainTokensPerStep?;
    decimal? cost?;
    @jsondata:Name {value: "cost_currency"}
    string? costCurrency?;
    @jsondata:Name {value: "estimated_start_time"}
    int? estimatedStartTime?;
    @jsondata:Name {value: "expected_duration_seconds"}
    int? expectedDurationSeconds?;
    @jsondata:Name {value: "train_tokens"}
    int? trainTokens?;
};

public type UserMessage record {|
    "user" role = "user";
    string|ContentChunk[]? content;
|};

public type Source "upload"|"repository"|"mistral";

public type ChatCompletionRequest record {|
    @jsondata:Name {value: "random_seed"}
    int? randomSeed?;
    @jsondata:Name {value: "safe_prompt"}
    boolean safePrompt = false;
    @jsondata:Name {value: "max_tokens"}
    int? maxTokens?;
    @jsondata:Name {value: "presence_penalty"}
    decimal presencePenalty = 0;
    Tool[]? tools?;
    # Number of completions to return for each request, input tokens are only billed once.
    int? n?;
    @jsondata:Name {value: "top_p"}
    decimal topP = 1;
    @jsondata:Name {value: "response_format"}
    ResponseFormat responseFormat?;
    @jsondata:Name {value: "frequency_penalty"}
    decimal frequencyPenalty = 0;
    # Stop generation if this token is detected. Or if one of these tokens is detected when providing an array
    string|string[] stop?;
    # Whether to stream back partial progress. If set, tokens will be sent as data-only server-side events as they become available, with the stream terminated by a data: [DONE] message. Otherwise, the server will hold the request open until the timeout or until completion, with the response containing the full result as JSON.
    boolean 'stream = false;
    # What sampling temperature to use, we recommend between 0.0 and 0.7. Higher values like 0.7 will make the output more random, while lower values like 0.2 will make it more focused and deterministic. We generally recommend altering this or `top_p` but not both. The default value varies depending on the model you are targeting. Call the `/models` endpoint to retrieve the appropriate value.
    decimal? temperature?;
    Prediction prediction?;
    # The prompt(s) to generate completions for, encoded as a list of dict with role and content.
    (SystemMessage|UserMessage|AssistantMessage|ToolMessage)[] messages;
    @jsondata:Name {value: "tool_choice"}
    ToolChoice|ToolChoiceEnum toolChoice = "auto";
    # ID of the model to use. You can use the [List Available Models](/api/#tag/models/operation/list_models_v1_models_get) API to see all of your available models, or see our [Model overview](/models) for model descriptions.
    string model;
|};

public type ModelList record {
    (BaseModelCard|FTModelCard)[] data?;
    string 'object = "list";
};

# {"type":"image_url","image_url":{"url":"data:image/png;base64,iVBORw0
public type ImageURLChunk record {|
    @jsondata:Name {value: "image_url"}
    ImageURL|string imageUrl;
    "image_url" 'type = "image_url";
|};

public type Function record {|
    string name;
    string description = "";
    boolean strict = false;
    record {} parameters;
|};

public type ToolChoiceEnum "auto"|"none"|"any"|"required";

public type TrainingParameters record {
    @jsondata:Name {value: "fim_ratio"}
    decimal? fimRatio = 0.9;
    @jsondata:Name {value: "weight_decay"}
    decimal? weightDecay = 0.1;
    @jsondata:Name {value: "training_steps"}
    int? trainingSteps?;
    @jsondata:Name {value: "learning_rate"}
    decimal learningRate = 0.00010;
    decimal? epochs?;
    @jsondata:Name {value: "seq_len"}
    int? seqLen?;
    @jsondata:Name {value: "warmup_fraction"}
    decimal? warmupFraction = 0.05;
};

public type Response\ Retrieve\ Model\ V1\ Models\ \ Model\ Id\ \ Get BaseModelCard|FTModelCard;

public type JobOut record {
    @jsondata:Name {value: "job_type"}
    string jobType;
    JobMetadataOut metadata?;
    @jsondata:Name {value: "fine_tuned_model"}
    string? fineTunedModel?;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    # Optional text/code that adds more context for the model. When given a `prompt` and a `suffix` the model will fill what is between them. When `suffix` is not provided, the model will simply execute completion starting with `prompt`.
    string? suffix?;
    @jsondata:Name {value: "auto_start"}
    boolean autoStart;
    @jsondata:Name {value: "training_files"}
    string[] trainingFiles;
    (GithubRepositoryOut)[] repositories = [];
    TrainingParameters hyperparameters;
    FineTuneableModel model;
    # The ID of the job.
    string id;
    @jsondata:Name {value: "trained_tokens"}
    int? trainedTokens?;
    @jsondata:Name {value: "modified_at"}
    int modifiedAt;
    # A list of integrations enabled for your fine-tuning job.
    (WandbIntegrationOut)[]? integrations?;
    # The current status of the fine-tuning job.
    "QUEUED"|"STARTED"|"VALIDATING"|"VALIDATED"|"RUNNING"|"FAILED_VALIDATION"|"FAILED"|"SUCCESS"|"CANCELLED"|"CANCELLATION_REQUESTED" status;
    @jsondata:Name {value: "validation_files"}
    string[]? validationFiles = [];
    # The object type of the fine-tuning job.
    "job" 'object = "job";
};

public type JobIn record {
    @jsondata:Name {value: "training_files"}
    TrainingFile[] trainingFiles = [];
    @constraint:Array {maxLength: 50}
    (GithubRepositoryIn)[] repositories = [];
    TrainingParametersIn hyperparameters;
    FineTuneableModel model;
    # A string that will be added to your fine-tuning model name. For example, a suffix of "my-great-model" would produce a model name like `ft:open-mistral-7b:my-great-model:xxx...`
    string? suffix?;
    # A list of integrations to enable for your fine-tuning job.
    (WandbIntegration)[]? integrations?;
    @jsondata:Name {value: "validation_files"}
    string[]? validationFiles?;
    @jsondata:Name {value: "auto_start"}
    boolean autoStart?;
};

# Proxy server configurations to be used with the HTTP client endpoint.
public type ProxyConfig record {|
    # Host name of the proxy server
    string host = "";
    # Proxy server port
    int port = 0;
    # Proxy server username
    string userName = "";
    # Proxy server password
    @display {label: "", kind: "password"}
    string password = "";
|};

public type EmbeddingRequest record {|
    # Text to embed.
    string|string[] input;
    # ID of the model to use.
    string model = "mistral-embed";
|};

public type Response JobOut|LegacyJobMetadataOut;

public type BatchJobOut record {
    @jsondata:Name {value: "succeeded_requests"}
    int succeededRequests;
    record {}? metadata?;
    @jsondata:Name {value: "failed_requests"}
    int failedRequests;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    @jsondata:Name {value: "output_file"}
    string? outputFile?;
    @jsondata:Name {value: "error_file"}
    string? errorFile?;
    @jsondata:Name {value: "input_files"}
    string[] inputFiles;
    @jsondata:Name {value: "completed_at"}
    int? completedAt?;
    string endpoint;
    @jsondata:Name {value: "completed_requests"}
    int completedRequests;
    @jsondata:Name {value: "total_requests"}
    int totalRequests;
    @jsondata:Name {value: "started_at"}
    int? startedAt?;
    string model;
    string id;
    BatchError[] errors;
    "batch" 'object = "batch";
    BatchJobStatus status;
};

public type EmbeddingResponse record {
    *ResponseBase;
    EmbeddingResponseData[] data;
    string id;
    string model;
    string 'object;
    UsageInfo usage;
};

public type ClassificationObject record {
    @jsondata:Name {value: "category_scores"}
    record {||} categoryScores?;
    # Classifier result thresholded
    record {|boolean...;|} categories?;
};

public type CheckpointOut record {
    @jsondata:Name {value: "step_number"}
    int stepNumber;
    @jsondata:Name {value: "created_at"}
    int createdAt;
    MetricOut metrics;
};
